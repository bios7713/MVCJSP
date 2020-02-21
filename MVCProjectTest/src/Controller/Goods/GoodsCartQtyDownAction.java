package Controller.Goods;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DTO.CartDTO;

public class GoodsCartQtyDownAction {
	public void execute(HttpServletRequest request, HttpServletResponse resopnse) {
		Integer goodsNum = Integer.parseInt(request.getParameter("goodsNum"));
		HttpSession session =  request.getSession();

		List<CartDTO> cartList =(List<CartDTO>)session.getAttribute("cartList");

		for(CartDTO c : cartList) {

			if(c.getGoodsSeq() == goodsNum) {
				c.setQty(c.getQty()-1); 
			}
		}
	}
}
