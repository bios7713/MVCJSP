package Controller.Goods;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GoodsCartPaymentAction {
public void execute(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		session.getAttribute("cartList");
		session.getAttribute("memId");
		
	}

}
