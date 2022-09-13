package com.semo.web.user.vo;

import java.sql.Date;

public class OrderMtVO {

	private int order_mt_no;
	private int customer_no;
	private String customer_name;
	private int product_code;
	private String order_mt_category1;
	private String order_mt_category2;
	private String order_mt_product;
	private int order_mt_count;
	private int order_mt_price;
	private Date order_mt_date;
	private int order_no;
	public int getOrder_mt_no() {
		return order_mt_no;
	}
	public void setOrder_mt_no(int order_mt_no) {
		this.order_mt_no = order_mt_no;
	}
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public String getOrder_mt_category1() {
		return order_mt_category1;
	}
	public void setOrder_mt_category1(String order_mt_category1) {
		this.order_mt_category1 = order_mt_category1;
	}
	public String getOrder_mt_category2() {
		return order_mt_category2;
	}
	public void setOrder_mt_category2(String order_mt_category2) {
		this.order_mt_category2 = order_mt_category2;
	}
	public String getOrder_mt_product() {
		return order_mt_product;
	}
	public void setOrder_mt_product(String order_mt_product) {
		this.order_mt_product = order_mt_product;
	}
	public int getOrder_mt_count() {
		return order_mt_count;
	}
	public void setOrder_mt_count(int order_mt_count) {
		this.order_mt_count = order_mt_count;
	}
	public int getOrder_mt_price() {
		return order_mt_price;
	}
	public void setOrder_mt_price(int order_mt_price) {
		this.order_mt_price = order_mt_price;
	}
	public Date getOrder_mt_date() {
		return order_mt_date;
	}
	public void setOrder_mt_date(Date order_mt_date) {
		this.order_mt_date = order_mt_date;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	@Override
	public String toString() {
		return "OrderMtVO [order_mt_no=" + order_mt_no + ", customer_no=" + customer_no + ", customer_name="
				+ customer_name + ", product_code=" + product_code + ", order_mt_category1=" + order_mt_category1
				+ ", order_mt_category2=" + order_mt_category2 + ", order_mt_product=" + order_mt_product
				+ ", order_mt_count=" + order_mt_count + ", order_mt_price=" + order_mt_price + ", order_mt_date="
				+ order_mt_date + ", order_no=" + order_no + "]";
	}
	
	
	
}
