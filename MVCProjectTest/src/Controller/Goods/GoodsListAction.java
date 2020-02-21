package Controller.Goods;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.GoodsDAO;

public class GoodsListAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
			int page = 1;
			int limit = 10;
			int limitPage = 10;
			
			if(request.getParameter("page") != null) {
				
				page = Integer.parseInt(request.getParameter("page"));
				
			}
			
		
			GoodsDAO dao = new GoodsDAO();
			
			List list = dao.getGoodsAllSelect(page,limit);
			Integer goodsCount = dao.getGoodsCount();
			
			int maxPage  = (int)((double)goodsCount / limit +0.95) ;
			int startPage = (int)(((double)page / limitPage +0.95) -1) * limitPage+ 1 ; // page = 12; strartPage= 11; 
			int endPage = startPage + limitPage -1;      // page = 12; endPage  = 20;
			if(endPage > maxPage){endPage = maxPage;}
			

			
		
			request.setAttribute("page", page);
			request.setAttribute("maxPage", maxPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);

			request.setAttribute("goodsCount",  goodsCount);
			request.setAttribute("goodsList", list);
		
	}

}
