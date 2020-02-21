package Controller.Goods;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DTO.CartDTO;

public class GoodsCartListAction {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session  = request.getSession();
		List<CartDTO> list = (List<CartDTO>)session.getAttribute("cartList");
	
		int totalMoney = 0;
	
		/*for (int i = 0; i<cartList.size(); i++) {
			CartDTO c = cartList.get(i);
			totalMoney +=c.getGoodsPrice() * c.getQty();
		}*/
		
for(CartDTO c : list ) {			
			totalMoney +=c.getGoodsPrice() * c.getQty();				
		}
		session.setAttribute("totalMoney", totalMoney);		

	}
	
	
}
