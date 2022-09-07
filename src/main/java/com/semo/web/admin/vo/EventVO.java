package com.semo.web.admin.vo;

import java.sql.Date;

public class EventVO {   
    private int board_event_no;
	private String board_event_title;
	private String board_event_content;
	private String board_event_filepath;
	private Date board_event_reg_date;
	private int admin_no;
	private Integer banner_no;
	public int getBoard_event_no() {
		return board_event_no;
	}
	public void setBoard_event_no(int board_event_no) {
		this.board_event_no = board_event_no;
	}
	public String getBoard_event_title() {
		return board_event_title;
	}
	public void setBoard_event_title(String board_event_title) {
		this.board_event_title = board_event_title;
	}
	public String getBoard_event_content() {
		return board_event_content;
	}
	public void setBoard_event_content(String board_event_content) {
		this.board_event_content = board_event_content;
	}
	public String getBoard_event_filepath() {
		return board_event_filepath;
	}
	public void setBoard_event_filepath(String board_event_filepath) {
		this.board_event_filepath = board_event_filepath;
	}
	public Date getBoard_event_reg_date() {
		return board_event_reg_date;
	}
	public void setBoard_event_reg_date(Date board_event_reg_date) {
		this.board_event_reg_date = board_event_reg_date;
	}
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	public Integer getBanner_no() {
		return banner_no;
	}
	public void setBanner_no(Integer banner_no) {
		this.banner_no = banner_no;
	}
	
	@Override
	public String toString() {
		return "EventVO [board_event_no=" + board_event_no + ", board_event_title=" + board_event_title
				+ ", board_event_content=" + board_event_content + ", board_event_filepath=" + board_event_filepath
				+ ", board_event_reg_date=" + board_event_reg_date + ", admin_no=" + admin_no + ", banner_no="
				+ banner_no + "]";
	}
	
	
}
