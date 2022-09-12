package com.semo.web.admin.vo;

import java.sql.Date;

public class Ad_QnAVO {
	private int ADMIN_QnA_NO;
	private String ADMIN_QnA_TITLE;
	private String ADMIN_QnA_CONTENT;
	private Date ADMIN_QnA_REG_DATE;
	private int BOARD_QnA_NO;
	private int ADMIN_NO;
	public int getADMIN_QnA_NO() {
		return ADMIN_QnA_NO;
	}
	public void setADMIN_QnA_NO(int aDMIN_QnA_NO) {
		ADMIN_QnA_NO = aDMIN_QnA_NO;
	}
	public String getADMIN_QnA_TITLE() {
		return ADMIN_QnA_TITLE;
	}
	public void setADMIN_QnA_TITLE(String aDMIN_QnA_TITLE) {
		ADMIN_QnA_TITLE = aDMIN_QnA_TITLE;
	}
	public String getADMIN_QnA_CONTENT() {
		return ADMIN_QnA_CONTENT;
	}
	public void setADMIN_QnA_CONTENT(String aDMIN_QnA_CONTENT) {
		ADMIN_QnA_CONTENT = aDMIN_QnA_CONTENT;
	}
	public Date getADMIN_QnA_REG_DATE() {
		return ADMIN_QnA_REG_DATE;
	}
	public void setADMIN_QnA_REG_DATE(Date aDMIN_QnA_REG_DATE) {
		ADMIN_QnA_REG_DATE = aDMIN_QnA_REG_DATE;
	}
	public int getBOARD_QnA_NO() {
		return BOARD_QnA_NO;
	}
	public void setBOARD_QnA_NO(int bOARD_QnA_NO) {
		BOARD_QnA_NO = bOARD_QnA_NO;
	}
	public int getADMIN_NO() {
		return ADMIN_NO;
	}
	public void setADMIN_NO(int aDMIN_NO) {
		ADMIN_NO = aDMIN_NO;
	}
	@Override
	public String toString() {
		return "Ad_QnAVO [ADMIN_QnA_NO=" + ADMIN_QnA_NO + ", ADMIN_QnA_TITLE=" + ADMIN_QnA_TITLE
				+ ", ADMIN_QnA_CONTENT=" + ADMIN_QnA_CONTENT + ", ADMIN_QnA_REG_DATE=" + ADMIN_QnA_REG_DATE
				+ ", BOARD_QnA_NO=" + BOARD_QnA_NO + ", ADMIN_NO=" + ADMIN_NO + "]";
	}
	
	
	
	
}
