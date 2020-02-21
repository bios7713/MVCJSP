package Model.DTO;

public class PaymentDTO {
	
	Integer paymentGoodsNum;         
	String userId;           
	String paymentMemName;    
	String paymentMemAdder;     
	String paymentMemEmail;
	String paymentMemPh;        
	String paymentMemCard;       
	Integer goodsSeq;  

    public Integer getPaymentGoodsNum() {
		return paymentGoodsNum;
	}
	public void setPaymentGoodsNum(Integer paymentGoodsNum) {
		this.paymentGoodsNum = paymentGoodsNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPaymentMemName() {
		return paymentMemName;
	}
	public void setPaymentMemName(String paymentMemName) {
		this.paymentMemName = paymentMemName;
	}
	public String getPaymentMemAdder() {
		return paymentMemAdder;
	}
	public void setPaymentMemAdder(String paymentMemAdder) {
		this.paymentMemAdder = paymentMemAdder;
	}
	public String getPaymentMemEmail() {
		return paymentMemEmail;
	}
	public void setPaymentMemEmail(String paymentMemEmail) {
		this.paymentMemEmail = paymentMemEmail;
	}
	public String getPaymentMemPh() {
		return paymentMemPh;
	}
	public void setPaymentMemPh(String paymentMemPh) {
		this.paymentMemPh = paymentMemPh;
	}
	public String getPaymentMemCard() {
		return paymentMemCard;
	}
	public void setPaymentMemCard(String paymentMemCard) {
		this.paymentMemCard = paymentMemCard;
	}
	public Integer getGoodsSeq() {
		return goodsSeq;
	}
	public void setGoodsSeq(Integer goodsSeq) {
		this.goodsSeq = goodsSeq;
	}
	
}
