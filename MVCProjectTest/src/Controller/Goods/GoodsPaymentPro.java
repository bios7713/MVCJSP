package Controller.Goods;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO.PaymentDAO;
import Model.DTO.CartDTO;
import Model.DTO.PaymentDTO;

public class GoodsPaymentPro {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		PaymentDTO dto = new PaymentDTO();
		HttpSession session = request.getSession();
		dto.setPaymentMemAdder(request.getParameter("userAddr"));		
		dto.setPaymentMemCard(request.getParameter("cardNum"));
		dto.setPaymentMemName(request.getParameter("userName"));
		dto.setPaymentMemPh(request.getParameter("userPh"));
		dto.setUserId((String)session.getAttribute("memId"));
		List<CartDTO> cartList = (List<CartDTO>)session.getAttribute("cartList");
		PaymentDAO payment = new PaymentDAO();

		
		
		
	}
}
