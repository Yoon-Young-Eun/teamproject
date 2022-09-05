package com.semo.web.admin.vo;

import java.sql.Date;

public class CouponVO {
	private int coupon_code;
	private String coupon_title;
	private int coupon_sale_price;
	private String coupon_type;
	private Date coupon_start_date;
	private Date coupon_end_date;
	
	public int getCoupon_code() {
		return coupon_code;
	}
	public void setCoupon_code(int coupon_code) {
		this.coupon_code = coupon_code;
	}
	public String getCoupon_title() {
		return coupon_title;
	}
	public void setCoupon_title(String coupon_title) {
		this.coupon_title = coupon_title;
	}
	public int getCoupon_sale_price() {
		return coupon_sale_price;
	}
	public void setCoupon_sale_price(int coupon_sale_price) {
		this.coupon_sale_price = coupon_sale_price;
	}
	public String getCoupon_type() {
		return coupon_type;
	}
	public void setCoupon_type(String coupon_type) {
		this.coupon_type = coupon_type;
	}
	public Date getCoupon_start_date() {
		return coupon_start_date;
	}
	public void setCoupon_start_date(Date coupon_start_date) {
		this.coupon_start_date = coupon_start_date;
	}
	public Date getCoupon_end_date() {
		return coupon_end_date;
	}
	public void setCoupon_end_date(Date coupon_end_date) {
		this.coupon_end_date = coupon_end_date;
	}
	
	@Override
	public String toString() {
		return "CouponVO [coupon_code=" + coupon_code + ", coupon_title=" + coupon_title + ", coupon_sale_price="
				+ coupon_sale_price + ", coupon_type=" + coupon_type + ", coupon_start_date=" + coupon_start_date
				+ ", coupon_end_date=" + coupon_end_date + "]";
	}
}
