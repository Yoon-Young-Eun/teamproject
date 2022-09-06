package com.semo.web.admin.vo;

import java.sql.Date;

public class TermsVO {
	private int terms_no;
	private String terms_title;
	private String terms_content;
	private boolean terms_necessary;
	private Date terms_reg_date;
	private int admin_no;
	public int getTerms_no() {
		return terms_no;
	}
	public void setTerms_no(int terms_no) {
		this.terms_no = terms_no;
	}
	public String getTerms_title() {
		return terms_title;
	}
	public void setTerms_title(String terms_title) {
		this.terms_title = terms_title;
	}
	public String getTerms_content() {
		return terms_content;
	}
	public void setTerms_content(String terms_content) {
		this.terms_content = terms_content;
	}
	public boolean isTerms_necessary() {
		return terms_necessary;
	}
	public void setTerms_necessary(boolean terms_necessary) {
		this.terms_necessary = terms_necessary;
	}
	public Date getTerms_reg_date() {
		return terms_reg_date;
	}
	public void setTerms_reg_date(Date terms_reg_date) {
		this.terms_reg_date = terms_reg_date;
	}
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	@Override
	public String toString() {
		return "TermsVO [terms_no=" + terms_no + ", terms_title=" + terms_title + ", terms_content=" + terms_content
				+ ", terms_necessary=" + terms_necessary + ", terms_reg_date=" + terms_reg_date + ", admin_no="
				+ admin_no + "]";
	}

	
}
