package com.semo.web.admin.vo;

import java.sql.Date;

public class ReviewVO {
	private int board_review_no;
	private int board_review_rating;
	private String board_review_name;
	private String board_review_title;
	private String board_review_content;
	private Date board_review_reg_date;
	private String board_review_status;
	private String customer_no;
	private int order_no;
	public int getBoard_review_no() {
		return board_review_no;
	}
	public void setBoard_review_no(int board_review_no) {
		this.board_review_no = board_review_no;
	}
	public int getBoard_review_rating() {
		return board_review_rating;
	}
	public void setBoard_review_rating(int board_review_rating) {
		this.board_review_rating = board_review_rating;
	}
	public String getBoard_review_name() {
		return board_review_name;
	}
	public void setBoard_review_name(String board_review_name) {
		this.board_review_name = board_review_name;
	}
	public String getBoard_review_title() {
		return board_review_title;
	}
	public void setBoard_review_title(String board_review_title) {
		this.board_review_title = board_review_title;
	}
	public String getBoard_review_content() {
		return board_review_content;
	}
	public void setBoard_review_content(String board_review_content) {
		this.board_review_content = board_review_content;
	}
	public Date getBoard_review_reg_date() {
		return board_review_reg_date;
	}
	public void setBoard_review_reg_date(Date board_review_reg_date) {
		this.board_review_reg_date = board_review_reg_date;
	}
	public String getBoard_review_status() {
		return board_review_status;
	}
	public void setBoard_review_status(String board_review_status) {
		this.board_review_status = board_review_status;
	}
	public String getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(String customer_no) {
		this.customer_no = customer_no;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	@Override
	public String toString() {
		return "ReviewVO [board_review_no=" + board_review_no + ", board_review_rating=" + board_review_rating
				+ ", board_review_name=" + board_review_name + ", board_review_title=" + board_review_title
				+ ", board_review_content=" + board_review_content + ", board_review_reg_date=" + board_review_reg_date
				+ ", board_review_status=" + board_review_status + ", customer_no=" + customer_no + ", order_no="
				+ order_no + "]";
	}
	
	
	
}
