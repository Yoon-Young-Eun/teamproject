package com.semo.web.user.vo;

public class CustomerVO {
   
   private int customer_no;
   private String customer_name;
   private String customer_passwd;
   private String customer_id;
   private String customer_phone;
   private String customer_join_date;
   private String customer_sms_permit;
   private String customer_zipcode;
   private String customer_address1;
   private String customer_address2;
   private String cm_gate_passwd;
   private String customer_birth;
   private String customer_status;
   private int vcount;
   
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getCustomer_passwd() {
		return customer_passwd;
	}
	public void setCustomer_passwd(String customer_passwd) {
		this.customer_passwd = customer_passwd;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	public String getCustomer_join_date() {
		return customer_join_date;
	}
	public void setCustomer_join_date(String customer_join_date) {
		this.customer_join_date = customer_join_date;
	}
	public String getCustomer_sms_permit() {
		return customer_sms_permit;
	}
	public void setCustomer_sms_permit(String customer_sms_permit) {
		this.customer_sms_permit = customer_sms_permit;
	}
	public String getCustomer_zipcode() {
		return customer_zipcode;
	}
	public void setCustomer_zipcode(String customer_zipcode) {
		this.customer_zipcode = customer_zipcode;
	}
	public String getCustomer_address1() {
		return customer_address1;
	}
	public void setCustomer_address1(String customer_address1) {
		this.customer_address1 = customer_address1;
	}
	public String getCustomer_address2() {
		return customer_address2;
	}
	public void setCustomer_address2(String customer_address2) {
		this.customer_address2 = customer_address2;
	}
	public String getCm_gate_passwd() {
		return cm_gate_passwd;
	}
	public void setCm_gate_passwd(String cm_gate_passwd) {
		this.cm_gate_passwd = cm_gate_passwd;
	}
	public String getCustomer_birth() {
		return customer_birth;
	}
	public void setCustomer_birth(String customer_birth) {
		this.customer_birth = customer_birth;
	}
	public String getCustomer_status() {
		return customer_status;
	}
	public void setCustomer_status(String customer_status) {
		this.customer_status = customer_status;
	}
	public int getVcount() {
		return vcount;
	}
	public void setVcount(int vcount) {
		this.vcount = vcount;
	}
	
	@Override
	public String toString() {
		return "CustomerVO [customer_no=" + customer_no + ", customer_name=" + customer_name + ", customer_passwd="
				+ customer_passwd + ", customer_id=" + customer_id + ", customer_phone=" + customer_phone
				+ ", customer_join_date=" + customer_join_date + ", customer_sms_permit=" + customer_sms_permit
				+ ", customer_zipcode=" + customer_zipcode + ", customer_address1=" + customer_address1
				+ ", customer_address2=" + customer_address2 + ", cm_gate_passwd=" + cm_gate_passwd + ", customer_birth="
				+ customer_birth + ", customer_status=" + customer_status + ", vcount=" + vcount + "]";
	}
  
   
}