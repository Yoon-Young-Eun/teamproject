package com.semo.web.user.vo;

public class PayVO {
	private int pay_no;
	private int customer_no;
	private String card_name;
	private int card_quota;
	private int paid_amount;
	private String imp_uid;
	private String merchant_uid;
	public int getPay_no() {
		return pay_no;
	}
	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	public int getCard_quota() {
		return card_quota;
	}
	public void setCard_quota(int card_quota) {
		this.card_quota = card_quota;
	}
	public int getPaid_amount() {
		return paid_amount;
	}
	public void setPaid_amount(int paid_amount) {
		this.paid_amount = paid_amount;
	}
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	public String getMerchant_uid() {
		return merchant_uid;
	}
	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}
	@Override
	public String toString() {
		return "PayVO [pay_no=" + pay_no + ", customer_no=" + customer_no + ", card_name=" + card_name + ", card_quota="
				+ card_quota + ", paid_amount=" + paid_amount + ", imp_uid=" + imp_uid + ", merchant_uid="
				+ merchant_uid + "]";
	}
	
	
	
}
