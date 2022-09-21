package com.semo.web.user.vo;

import java.sql.Date;

public class Cm_QnAVO {

private int board_qna_no;
private String board_qna_type;
private String board_qna_title;
private String board_qna_content;
private String board_qna_filepath;
private Date board_qna_reg_date;
private int board_qna_status;
private String customer_no;
	   
private String admin_qna_title;
private String admin_qna_content;
private Date admin_qna_reg_date;

public int getBoard_qna_no() {
	return board_qna_no;
}
public void setBoard_qna_no(int board_qna_no) {
	this.board_qna_no = board_qna_no;
}
public String getBoard_qna_type() {
	return board_qna_type;
}
public void setBoard_qna_type(String board_qna_type) {
	this.board_qna_type = board_qna_type;
}
public String getBoard_qna_title() {
	return board_qna_title;
}
public void setBoard_qna_title(String board_qna_title) {
	this.board_qna_title = board_qna_title;
}
public String getBoard_qna_content() {
	return board_qna_content;
}
public void setBoard_qna_content(String board_qna_content) {
	this.board_qna_content = board_qna_content;
}
public String getBoard_qna_filepath() {
	return board_qna_filepath;
}
public void setBoard_qna_filepath(String board_qna_filepath) {
	this.board_qna_filepath = board_qna_filepath;
}
public Date getBoard_qna_reg_date() {
	return board_qna_reg_date;
}
public void setBoard_qna_reg_date(Date board_qna_reg_date) {
	this.board_qna_reg_date = board_qna_reg_date;
}
public int getBoard_qna_status() {
	return board_qna_status;
}
public void setBoard_qna_status(int board_qna_status) {
	this.board_qna_status = board_qna_status;
}
public String getCustomer_no() {
	return customer_no;
}
public void setCustomer_no(String customer_no) {
	this.customer_no = customer_no;
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

@Override
public String toString() {
	return "Cm_QnAVO [board_qna_no=" + board_qna_no + ", board_qna_type=" + board_qna_type + ", board_qna_title="
			+ board_qna_title + ", board_qna_content=" + board_qna_content + ", board_qna_filepath="
			+ board_qna_filepath + ", board_qna_reg_date=" + board_qna_reg_date + ", board_qna_status="
			+ board_qna_status + ", customer_no=" + customer_no + ", admin_qna_title=" + admin_qna_title
			+ ", admin_qna_content=" + admin_qna_content + ", admin_qna_reg_date=" + admin_qna_reg_date + "]";
}



}
