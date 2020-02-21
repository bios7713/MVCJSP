package Model.DAO;

import java.util.List;

import Model.DTO.CartDTO;
import Model.DTO.PaymentDTO;

public class PaymentDAO extends DataBaseInfo{
		public void insertPay(List<CartDTO> cartList, PaymentDTO pay) {
			getConnection();
			sql ="insert into payment(user_Id, goods_Seq, payment_Goods_Num, "
				  	                           +"  payment_Goods_Num, payment_Goods_Name, "
				  	                           + "payment_Goods_Addr, payment_Goods_Email, "
				  	                           + "payment_Goods_Ph, payment_Goods_Card )";

			
		}
}
