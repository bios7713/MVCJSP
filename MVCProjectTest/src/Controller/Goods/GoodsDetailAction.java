package Controller.Goods;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.GoodsDAO;
import Model.DTO.GoodsDTO;

public class GoodsDetailAction {
	public void execute(HttpServletRequest request, HttpServletResponse resopnse) {
		       GoodsDAO dao = new GoodsDAO();
				
		       Integer goodsSeq = Integer.parseInt(request.getParameter("num"));
		   
		       dao.visitCountUpdate(Integer.parseInt(request.getParameter("num")));
		       
		       GoodsDTO goods = dao.getOneSelect(goodsSeq);
		       	
		       	request.setAttribute("goods", goods);
		       	
		       	
		       	
		       	
		       
		       
		       
		       
		       
	}

}
