package com.semo.web.admin.vo;

import java.sql.Date;

public class VisitorVO {
	private int no;
	private Date vdate;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public Date getVdate() {
		return vdate;
	}
	public void setVdate(Date vdate) {
		this.vdate = vdate;
	}
	
	@Override
	public String toString() {
		return "VisitorVO [no=" + no + ", vdate=" + vdate + "]";
	}
	
}
