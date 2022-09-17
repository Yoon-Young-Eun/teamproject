package com.semo.web.user.vo;

import java.sql.Date;

public class EstimateVO {
	private int estimate_cm_no;
	private int customer_no;
	private String customer_name;
	private String estimate_type;
	private Date estimate_date;
	private String customer_address1;
	private String customer_address2;
	private String customer_phone;
	private String estimate_content;
	private String estimate_filepath;
	private String estimate_status;
	public int getEstimate_cm_no() {
		return estimate_cm_no;
	}
	public void setEstimate_cm_no(int estimate_cm_no) {
		this.estimate_cm_no = estimate_cm_no;
	}
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
	public String getEstimate_type() {
		return estimate_type;
	}
	public void setEstimate_type(String estimate_type) {
		this.estimate_type = estimate_type;
	}
	public Date getEstimate_date() {
		return estimate_date;
	}
	public void setEstimate_date(Date estimate_date) {
		this.estimate_date = estimate_date;
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
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	public String getEstimate_content() {
		return estimate_content;
	}
	public void setEstimate_content(String estimate_content) {
		this.estimate_content = estimate_content;
	}
	public String getEstimate_filepath() {
		return estimate_filepath;
	}
	public void setEstimate_filepath(String estimate_filepath) {
		this.estimate_filepath = estimate_filepath;
	}
	public String getEstimate_status() {
		return estimate_status;
	}
	public void setEstimate_status(String estimate_status) {
		this.estimate_status = estimate_status;
	}
	@Override
	public String toString() {
		return "EstimateVO [estimate_cm_no=" + estimate_cm_no + ", customer_no=" + customer_no + ", customer_name="
				+ customer_name + ", estimate_type=" + estimate_type + ", estimate_date=" + estimate_date
				+ ", customer_address1=" + customer_address1 + ", customer_address2=" + customer_address2
				+ ", customer_phone=" + customer_phone + ", estimate_content=" + estimate_content
				+ ", estimate_filepath=" + estimate_filepath + ", estimate_status=" + estimate_status + "]";
	}
	
}
