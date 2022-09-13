package com.semo.web.admin.vo;

public class Estimate_T_VO {
//견적서 타입용
	private int estimate_type_no;
	private String estimate_type_title;
	private String estimate_type_content;
	public int getEstimate_type_no() {
		return estimate_type_no;
	}
	public void setEstimate_type_no(int estimate_type_no) {
		this.estimate_type_no = estimate_type_no;
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
		return "Estimate_T_VO [estimate_type_no=" + estimate_type_no + ", estimate_type_title=" + estimate_type_title
				+ ", estimate_type_content=" + estimate_type_content + "]";
	}
	
}
