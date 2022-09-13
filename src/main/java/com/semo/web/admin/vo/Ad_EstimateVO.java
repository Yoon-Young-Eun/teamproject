package com.semo.web.admin.vo;

import java.sql.Date;

public class Ad_EstimateVO {
	private int estimate_ad_no;
	private int estimate_cm_no;
	private int estimate_price;
	private Date estimate_reply_date;
	private String estimate_type_title;
	private String estimate_type_content;
	
	public int getEstimate_ad_no() {
		return estimate_ad_no;
	}
	public void setEstimate_ad_no(int estimate_ad_no) {
		this.estimate_ad_no = estimate_ad_no;
	}
	public int getEstimate_cm_no() {
		return estimate_cm_no;
	}
	public void setEstimate_cm_no(int estimate_cm_no) {
		this.estimate_cm_no = estimate_cm_no;
	}
	public int getEstimate_price() {
		return estimate_price;
	}
	public void setEstimate_price(int estimate_price) {
		this.estimate_price = estimate_price;
	}
	public Date getEstimate_reply_date() {
		return estimate_reply_date;
	}
	public void setEstimate_reply_date(Date estimate_reply_date) {
		this.estimate_reply_date = estimate_reply_date;
	}
	
	
	public String getEstimate_type_title() {
		return estimate_type_title;
	}
	public void setEstimate_type_title(String estimate_type_title) {
		this.estimate_type_title = estimate_type_title;
	}
	public String getEstimate_type_content() {
		return estimate_type_content;
	}
	public void setEstimate_type_content(String estimate_type_content) {
		this.estimate_type_content = estimate_type_content;
	}
	@Override
	public String toString() {
		return "Ad_EstimateVO [estimate_ad_no=" + estimate_ad_no + ", estimate_cm_no=" + estimate_cm_no
				+ ", estimate_price=" + estimate_price + ", estimate_reply_date=" + estimate_reply_date
				+ ", estimate_type_title=" + estimate_type_title + ", estimate_type_content=" + estimate_type_content
				+ "]";
	}
	
	
	
}
