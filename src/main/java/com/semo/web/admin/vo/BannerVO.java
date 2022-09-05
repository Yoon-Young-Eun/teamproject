package com.semo.web.admin.vo;

import java.sql.Date;

public class BannerVO {
	private int banner_no;
	private String banner_title;
	private String banner_content;
	private String banner_filepath;
	private boolean banner_usable;
	private Date banner_reg_date;
	private int admin_no;
	
	public int getBanner_no() {
		return banner_no;
	}
	public void setBanner_no(int banner_no) {
		this.banner_no = banner_no;
	}
	public String getBanner_title() {
		return banner_title;
	}
	public void setBanner_title(String banner_title) {
		this.banner_title = banner_title;
	}
	public String getBanner_content() {
		return banner_content;
	}
	public void setBanner_content(String banner_content) {
		this.banner_content = banner_content;
	}
	public String getBanner_filepath() {
		return banner_filepath;
	}
	public void setBanner_filepath(String banner_filepath) {
		this.banner_filepath = banner_filepath;
	}
	public boolean isBanner_usable() {
		return banner_usable;
	}
	public void setBanner_usable(boolean banner_usable) {
		this.banner_usable = banner_usable;
	}
	public Date getBanner_reg_date() {
		return banner_reg_date;
	}
	public void setBanner_reg_date(Date banner_reg_date) {
		this.banner_reg_date = banner_reg_date;
	}
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	@Override
	public String toString() {
		return "BannnerVO [banner_no=" + banner_no + ", banner_title=" + banner_title + ", banner_content="
				+ banner_content + ", banner_filepath=" + banner_filepath + ", banner_usable=" + banner_usable
				+ ", banner_reg_date=" + banner_reg_date + ", admin_no=" + admin_no + "]";
	}
	
	
	
}
