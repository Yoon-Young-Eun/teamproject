package com.semo.web.admin.vo;

import java.sql.Date;

public class Ad_QnAVO {
	private int admin_qna_no;
	private String admin_qna_title;
	private String admin_qna_content;
	private Date admin_qna_reg_date;
	private int board_qna_no;
	private int admin_no;
	
	public int getAdmin_qna_no() {
		return admin_qna_no;
	}
	public void setAdmin_qna_no(int admin_qna_no) {
		this.admin_qna_no = admin_qna_no;
	}
	public String getAdmin_qna_title() {
		return admin_qna_title;
	}
	public void setAdmin_qna_title(String admin_qna_title) {
		this.admin_qna_title = admin_qna_title;
	}
	public String getAdmin_qna_content() {
		return admin_qna_content;
	}
	public void setAdmin_qna_content(String admin_qna_content) {
		this.admin_qna_content = admin_qna_content;
	}
	public Date getAdmin_qna_reg_date() {
		return admin_qna_reg_date;
	}
	public void setAdmin_qna_reg_date(Date admin_qna_reg_date) {
		this.admin_qna_reg_date = admin_qna_reg_date;
	}
	public int getBoard_qna_no() {
		return board_qna_no;
	}
	public void setBoard_qna_no(int board_qna_no) {
		this.board_qna_no = board_qna_no;
	}
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	
	@Override
	public String toString() {
		return "Ad_QnAVO [admin_qna_no=" + admin_qna_no + ", admin_qna_title=" + admin_qna_title
				+ ", admin_qna_content=" + admin_qna_content + ", admin_qna_reg_date=" + admin_qna_reg_date
				+ ", board_qna_no=" + board_qna_no + ", admin_no=" + admin_no + "]";
	}

	
	
	
}
