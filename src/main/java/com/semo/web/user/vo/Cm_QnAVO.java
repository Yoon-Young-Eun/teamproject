package com.semo.web.user.vo;

import java.sql.Date;

public class Cm_QnAVO {
	private int BOARD_QnA_NO;
	private String BOARD_QnA_TYPE;
	private String BOARD_QnA_TITLE;
	private String BOARD_QnA_CONTENT;
	private String BOARD_QnA_FILEPATH;
	private Date BOARD_QnA_REG_DATE;
	private int BOARD_QnA_STATUS;
	private String CUSTOMER_ID;
	
	private String ADMIN_QnA_TITLE;
	private String ADMIN_QnA_CONTENT;
	private Date ADMIN_QnA_REG_DATE;
	
	public int getBOARD_QnA_NO() {
		return BOARD_QnA_NO;
	}
	public void setBOARD_QnA_NO(int bOARD_QnA_NO) {
		BOARD_QnA_NO = bOARD_QnA_NO;
	}
	public String getBOARD_QnA_TYPE() {
		return BOARD_QnA_TYPE;
	}
	public void setBOARD_QnA_TYPE(String bOARD_QnA_TYPE) {
		BOARD_QnA_TYPE = bOARD_QnA_TYPE;
	}
	public String getBOARD_QnA_TITLE() {
		return BOARD_QnA_TITLE;
	}
	public void setBOARD_QnA_TITLE(String bOARD_QnA_TITLE) {
		BOARD_QnA_TITLE = bOARD_QnA_TITLE;
	}
	public String getBOARD_QnA_CONTENT() {
		return BOARD_QnA_CONTENT;
	}
	public void setBOARD_QnA_CONTENT(String bOARD_QnA_CONTENT) {
		BOARD_QnA_CONTENT = bOARD_QnA_CONTENT;
	}
	public String getBOARD_QnA_FILEPATH() {
		return BOARD_QnA_FILEPATH;
	}
	public void setBOARD_QnA_FILEPATH(String bOARD_QnA_FILEPATH) {
		BOARD_QnA_FILEPATH = bOARD_QnA_FILEPATH;
	}
	public Date getBOARD_QnA_REG_DATE() {
		return BOARD_QnA_REG_DATE;
	}
	public void setBOARD_QnA_REG_DATE(Date bOARD_QnA_REG_DATE) {
		BOARD_QnA_REG_DATE = bOARD_QnA_REG_DATE;
	}
	public int getBOARD_QnA_STATUS() {
		return BOARD_QnA_STATUS;
	}
	public void setBOARD_QnA_STATUS(int bOARD_QnA_STATUS) {
		BOARD_QnA_STATUS = bOARD_QnA_STATUS;
	}
	public String getCUSTOMER_ID() {
		return CUSTOMER_ID;
	}
	public void setCUSTOMER_ID(String cUSTOMER_ID) {
		CUSTOMER_ID = cUSTOMER_ID;
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
	
	@Override
	public String toString() {
		return "Cm_QnAVO [BOARD_QnA_NO=" + BOARD_QnA_NO + ", BOARD_QnA_TYPE=" + BOARD_QnA_TYPE + ", BOARD_QnA_TITLE="
				+ BOARD_QnA_TITLE + ", BOARD_QnA_CONTENT=" + BOARD_QnA_CONTENT + ", BOARD_QnA_FILEPATH="
				+ BOARD_QnA_FILEPATH + ", BOARD_QnA_REG_DATE=" + BOARD_QnA_REG_DATE + ", BOARD_QnA_STATUS="
				+ BOARD_QnA_STATUS + ", CUSTOMER_ID=" + CUSTOMER_ID + ", ADMIN_QnA_TITLE=" + ADMIN_QnA_TITLE
				+ ", ADMIN_QnA_CONTENT=" + ADMIN_QnA_CONTENT + ", ADMIN_QnA_REG_DATE=" + ADMIN_QnA_REG_DATE + "]";
	}
	
	
}
