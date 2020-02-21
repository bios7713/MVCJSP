package Controller.Goods;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO.GoodsDAO;
import Model.DTO.GoodsDTO;

public class GoodsModifyAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	
				
				Integer goodsSeq = Integer.parseInt(request.getParameter("num"));
				
				
			
				GoodsDAO dao = new GoodsDAO();
				GoodsDTO dto = dao.getOneSelect(goodsSeq);
				
				request.setAttribute("goods", dto);
				
	}
}
