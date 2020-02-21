package Controller.Goods;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.GoodsDAO;
import Model.DTO.CartDTO;
import Model.DTO.GoodsDTO;

public class GoodsCartAddAction {
	  public void execute(HttpServletRequest request, HttpServletResponse response) {
	      Integer goodsSeq = Integer.parseInt(request.getParameter("num"));
	      
	      GoodsDAO dao = new GoodsDAO();
	      GoodsDTO dto = dao.getOneSelect(goodsSeq);
	      CartDTO cart = null;
	      HttpSession session = request.getSession(); // 로그아웃하면 장바구니에 담은거 사라지게
	      boolean newcart = true; // 현재 선택한 상품이 새로운 상품인지를 확인
	      List<CartDTO> list = (List<CartDTO>)session.getAttribute("cartList");
	      if(list == null ) {
	         list = new ArrayList<CartDTO>();
	      }
	      for(CartDTO c : list) {
	         if(c.getGoodsSeq().toString().equals(dto.getGoodsSeq().toString())) {
	            newcart = false;
	            c.setQty(c.getQty()+1);
	         }
	      }
	      
	      
	      if(newcart ) {
	      cart = new CartDTO();  
	      cart.setGoodsSeq(dto.getGoodsSeq());
	      cart.setGoodsName(dto.getGoodsName());
	      cart.setGoodsPrice(dto.getGoodsPrice());
	      cart.setGoodsImage(dto.getGoodsImage());
	      cart.setQty(1);
	      list.add(cart);
	      }
	      session.setAttribute("cartList", list);
	   }
		
}
