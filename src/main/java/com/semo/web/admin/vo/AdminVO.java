package com.semo.web.admin.vo;

public class AdminVO {

	private int admin_no;
	private String admin_id;
	private String admin_passwd;
	private String admin_position;
	private String admin_title;
	private String admin_name;
	
	public int getAdmin_no() {
		return admin_no;
	}
	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_passwd() {
		return admin_passwd;
	}
	public void setAdmin_passwd(String admin_passwd) {
		this.admin_passwd = admin_passwd;
	}
	public String getAdmin_position() {
		return admin_position;
	}
	public void setAdmin_position(String admin_position) {
		this.admin_position = admin_position;
	}
	public String getAdmin_title() {
		return admin_title;
	}
	public void setAdmin_title(String admin_title) {
		this.admin_title = admin_title;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	
	@Override
	public String toString() {
		return "AdminDAO [admin_no=" + admin_no + ", admin_id=" + admin_id + ", admin_passwd=" + admin_passwd
				+ ", admin_position=" + admin_position + ", admin_title=" + admin_title + ", admin_name=" + admin_name
				+ "]";
	}
	
}
