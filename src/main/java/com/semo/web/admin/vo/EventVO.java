package com.semo.web.admin.vo;

import java.sql.Date;

public class EventVO {   
    private int board_event_no;
	private String board_event_title;
	private String board_event_content;
	private String board_event_filepath;
	private Date board_event_reg_date;
	private boolean board_event_status;
	private String banner_filepath;
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
	public boolean isBoard_event_status() {
		return board_event_status;
	}
	public void setBoard_event_status(boolean board_event_status) {
		this.board_event_status = board_event_status;
	}
	public String getBanner_filepath() {
		return banner_filepath;
	}
	public void setBanner_filepath(String banner_filepath) {
		this.banner_filepath = banner_filepath;
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
				+ ", board_event_reg_date=" + board_event_reg_date + ", board_event_status=" + board_event_status
				+ ", banner_filepath=" + banner_filepath + ", banner_no=" + banner_no + "]";
	}
	
}
