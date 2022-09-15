package com.semo.web.user.vo;

public class CouponListVO {

	private int coupon_management_no;
	private int coupon_management_status;
	private String coupon_management_name;
	private String coupon_management_start_date;
	private String coupon_management_end_date;
	private int coupon_management_price;
	private int customer_no;
	private int coupon_code;
	
	public int getCoupon_management_no() {
		return coupon_management_no;
	}
	public void setCoupon_management_no(int coupon_management_no) {
		this.coupon_management_no = coupon_management_no;
	}
	public int getCoupon_management_status() {
		return coupon_management_status;
	}
	public void setCoupon_management_status(int coupon_management_status) {
		this.coupon_management_status = coupon_management_status;
	}
	public String getCoupon_management_name() {
		return coupon_management_name;
	}
	public void setCoupon_management_name(String coupon_management_name) {
		this.coupon_management_name = coupon_management_name;
	}
	public String getCoupon_management_start_date() {
		return coupon_management_start_date;
	}
	public void setCoupon_management_start_date(String coupon_management_start_date) {
		this.coupon_management_start_date = coupon_management_start_date;
	}
	public String getCoupon_management_end_date() {
		return coupon_management_end_date;
	}
	public void setCoupon_management_end_date(String coupon_management_end_date) {
		this.coupon_management_end_date = coupon_management_end_date;
	}
	public int getCoupon_management_price() {
		return coupon_management_price;
	}
	public void setCoupon_management_price(int coupon_management_price) {
		this.coupon_management_price = coupon_management_price;
	}
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	public int getCoupon_code() {
		return coupon_code;
	}
	public void setCoupon_code(int coupon_code) {
		this.coupon_code = coupon_code;
	}
	@Override
	public String toString() {
		return "CouponListVO [coupon_management_no=" + coupon_management_no + ", coupon_management_status="
				+ coupon_management_status + ", coupon_management_name=" + coupon_management_name
				+ ", coupon_management_start_date=" + coupon_management_start_date + ", coupon_management_end_date="
				+ coupon_management_end_date + ", coupon_management_price=" + coupon_management_price + ", customer_no="
				+ customer_no + ", coupon_code=" + coupon_code + "]";
	}
	
	
}
