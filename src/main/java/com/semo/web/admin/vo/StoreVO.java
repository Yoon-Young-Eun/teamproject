package com.semo.web.admin.vo;

public class StoreVO {
	private int store_code;
	private String store_type;
	private String store_name;
	private String store_address1;
	private String store_address2;
	private int store_zipcode;
	private String store_phone;
	private String store_status;
	private String store_latitude;
	private String store_longitude;
	public int getStore_code() {
		return store_code;
	}
	public void setStore_code(int store_code) {
		this.store_code = store_code;
	}
	public String getStore_type() {
		return store_type;
	}
	public void setStore_type(String store_type) {
		this.store_type = store_type;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getStore_address1() {
		return store_address1;
	}
	public void setStore_address1(String store_address1) {
		this.store_address1 = store_address1;
	}
	public String getStore_address2() {
		return store_address2;
	}
	public void setStore_address2(String store_address2) {
		this.store_address2 = store_address2;
	}
	public int getStore_zipcode() {
		return store_zipcode;
	}
	public void setStore_zipcode(int store_zipcode) {
		this.store_zipcode = store_zipcode;
	}
	public String getStore_phone() {
		return store_phone;
	}
	public void setStore_phone(String store_phone) {
		this.store_phone = store_phone;
	}
	public String getStore_status() {
		return store_status;
	}
	public void setStore_status(String store_status) {
		this.store_status = store_status;
	}
	public String getStore_latitude() {
		return store_latitude;
	}
	public void setStore_latitude(String store_latitude) {
		this.store_latitude = store_latitude;
	}
	public String getStore_longitude() {
		return store_longitude;
	}
	public void setStore_longitude(String store_longitude) {
		this.store_longitude = store_longitude;
	}
	
	@Override
	public String toString() {
		return "StoreVO [store_code=" + store_code + ", store_type=" + store_type + ", store_name=" + store_name
				+ ", store_address1=" + store_address1 + ", store_address2=" + store_address2 + ", store_zipcode="
				+ store_zipcode + ", store_phone=" + store_phone + ", store_status=" + store_status
				+ ", store_latitude=" + store_latitude + ", store_longitude=" + store_longitude + "]";
	}
	
}
