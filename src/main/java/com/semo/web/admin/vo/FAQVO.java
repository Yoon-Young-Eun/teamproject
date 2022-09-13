package com.semo.web.admin.vo;

import java.sql.Date;

public class FAQVO {
	private int board_faq_no;
	private String board_faq_type;
	private String board_faq_title;
	private String board_faq_content;
	private Date board_faq_reg_date;
	private int admin_no;
	
	public int getBoard_faq_no() {
		return board_faq_no;
	}
	public void setBoard_faq_no(int board_faq_no) {
		this.board_faq_no = board_faq_no;
	}
	public String getBoard_faq_type() {
		return board_faq_type;
	}
	public void setBoard_faq_type(String board_faq_type) {
		this.board_faq_type = board_faq_type;
	}
	public String getBoard_faq_title() {
		return board_faq_title;
	}
	public void setBoard_faq_title(String board_faq_title) {
		this.board_faq_title = board_faq_title;
	}
	public String getBoard_faq_content() {
		return board_faq_content;
	}
	public void setBoard_faq_content(String board_faq_content) {
		this.board_faq_content = board_faq_content;
	}
	public Date getBoard_faq_reg_date() {
		return board_faq_reg_date;
	}
	public void setBoard_faq_reg_date(Date board_faq_reg_date) {
		this.board_faq_reg_date = board_faq_reg_date;
	}
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	
	@Override
	public String toString() {
		return "FAQVO [board_faq_no=" + board_faq_no + ", board_faq_type=" + board_faq_type + ", board_faq_title="
				+ board_faq_title + ", board_faq_content=" + board_faq_content + ", board_faq_reg_date="
				+ board_faq_reg_date + ", admin_no=" + admin_no + "]";
	}
	
}
