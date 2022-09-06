package com.semo.web.user.vo;

public class AddressListVO {

	private int cm_address_no;
	private String cm_address1;
	private String cm_address2;
	private String cm_address_name;
	private String cm_gate_passwd;
	private String cm_phone_number;
	private int customer_no;
	public int getCm_address_no() {
		return cm_address_no;
	}
	public void setCm_address_no(int cm_address_no) {
		this.cm_address_no = cm_address_no;
	}
	public String getCm_address1() {
		return cm_address1;
	}
	public void setCm_address1(String cm_address1) {
		this.cm_address1 = cm_address1;
	}
	public String getCm_address2() {
		return cm_address2;
	}
	public void setCm_address2(String cm_address2) {
		this.cm_address2 = cm_address2;
	}
	public String getCm_address_name() {
		return cm_address_name;
	}
	public void setCm_address_name(String cm_address_name) {
		this.cm_address_name = cm_address_name;
	}
	public String getCm_gate_passwd() {
		return cm_gate_passwd;
	}
	public void setCm_gate_passwd(String cm_gate_passwd) {
		this.cm_gate_passwd = cm_gate_passwd;
	}
	public String getCm_phone_number() {
		return cm_phone_number;
	}
	public void setCm_phone_number(String cm_phone_number) {
		this.cm_phone_number = cm_phone_number;
	}
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	@Override
	public String toString() {
		return "AddressListVO [cm_address_no=" + cm_address_no + ", cm_address1=" + cm_address1 + ", cm_address2="
				+ cm_address2 + ", cm_address_name=" + cm_address_name + ", cm_gate_passwd=" + cm_gate_passwd
				+ ", cm_phone_number=" + cm_phone_number + ", customer_no=" + customer_no + "]";
	}
	
}	
