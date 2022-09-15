package com.semo.web.user.vo;

public class Estimate_ImageVO {
	
	private int customer_no;
	private int estimate_cm_no;
	private String estimate_filepath;
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	public int getEstimate_cm_no() {
		return estimate_cm_no;
	}
	public void setEstimate_cm_no(int estimate_cm_no) {
		this.estimate_cm_no = estimate_cm_no;
	}
	public String getEstimate_filepath() {
		return estimate_filepath;
	}
	public void setEstimate_filepath(String estimate_filepath) {
		this.estimate_filepath = estimate_filepath;
	}
	@Override
	public String toString() {
		return "Estimate_ImageVO [customer_no=" + customer_no + ", estimate_cm_no=" + estimate_cm_no
				+ ", estimate_filepath=" + estimate_filepath + "]";
	}
	
	

}
