package com.semo.web.user.vo;

import java.sql.Date;

public class FaqVO {
	
	private int board_faq_no;
	private String board_faq_title;
	private String board_faq_content;
	private int admin_no;
	private String board_faq_type;
	private Date board_faq_reg_date;
	public int getBoard_faq_no() {
		return board_faq_no;
	}
	public void setBoard_faq_no(int board_faq_no) {
		this.board_faq_no = board_faq_no;
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
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	public String getBoard_faq_type() {
		return board_faq_type;
	}
	public void setBoard_faq_type(String board_faq_type) {
		this.board_faq_type = board_faq_type;
	}
	public Date getBoard_faq_reg_date() {
		return board_faq_reg_date;
	}
	public void setBoard_faq_reg_date(Date board_faq_reg_date) {
		this.board_faq_reg_date = board_faq_reg_date;
	}
	@Override
	public String toString() {
		return "FaqVO [board_faq_no=" + board_faq_no + ", board_faq_title=" + board_faq_title + ", board_faq_content="
				+ board_faq_content + ", admin_no=" + admin_no + ", board_faq_type=" + board_faq_type
				+ ", board_faq_reg_date=" + board_faq_reg_date + "]";
	}
	
	

}
