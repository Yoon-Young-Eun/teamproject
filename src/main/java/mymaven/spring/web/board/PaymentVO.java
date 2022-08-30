package mymaven.spring.web.board;

public class PaymentVO {
	
	private String paymentCode;
	private String paymentGroupCode;
	private int paymentTotalOrderPrice;
	private String paymentUsePoint;
	private String paymentTotalPayPrice;
	private String paymentState;
	private String paymentRegDate;
	public String getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getPaymentGroupCode() {
		return paymentGroupCode;
	}
	public void setPaymentGroupCode(String paymentGroupCode) {
		this.paymentGroupCode = paymentGroupCode;
	}
	public int getPaymentTotalOrderPrice() {
		return paymentTotalOrderPrice;
	}
	public void setPaymentTotalOrderPrice(int paymentTotalOrderPrice) {
		this.paymentTotalOrderPrice = paymentTotalOrderPrice;
	}
	public String getPaymentUsePoint() {
		return paymentUsePoint;
	}
	public void setPaymentUsePoint(String paymentUsePoint) {
		this.paymentUsePoint = paymentUsePoint;
	}
	public String getPaymentTotalPayPrice() {
		return paymentTotalPayPrice;
	}
	public void setPaymentTotalPayPrice(String paymentTotalPayPrice) {
		this.paymentTotalPayPrice = paymentTotalPayPrice;
	}
	public String getPaymentState() {
		return paymentState;
	}
	public void setPaymentState(String paymentState) {
		this.paymentState = paymentState;
	}
	public String getPaymentRegDate() {
		return paymentRegDate;
	}
	public void setPaymentRegDate(String paymentRegDate) {
		this.paymentRegDate = paymentRegDate;
	}
	
	@Override
	public String toString() {
		return "PaymentVO [paymentCode=" + paymentCode + ", paymentGroupCode=" + paymentGroupCode
				+ ", paymentTotalOrderPrice=" + paymentTotalOrderPrice + ", paymentUsePoint=" + paymentUsePoint
				+ ", paymentTotalPayPrice=" + paymentTotalPayPrice + ", paymentState=" + paymentState
				+ ", paymentRegDate=" + paymentRegDate + "]";
	}

}
