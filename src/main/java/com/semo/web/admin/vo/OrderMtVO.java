package com.semo.web.admin.vo;

public class OrderMtVO {

	private int order_mt_no;
	private int customer_no;
	private String customer_name;
	private String product_code;
	private String order_mt_category1;
	private String order_mt_category2;
	private String order_mt_product;	
	private String order_mt_price;
	private String order_mt_date;
	private String order_no;
	
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
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
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
	public String getOrder_mt_price() {
		return order_mt_price;
	}
	public void setOrder_mt_price(String order_mt_price) {
		this.order_mt_price = order_mt_price;
	}
	public String getOrder_mt_date() {
		return order_mt_date;
	}
	public void setOrder_mt_date(String order_mt_date) {
		this.order_mt_date = order_mt_date;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	@Override
	public String toString() {
		return "CmOrderVO [order_mt_no=" + order_mt_no + ", customer_no=" + customer_no + ", customer_name="
				+ customer_name + ", product_code=" + product_code + ", order_mt_category1=" + order_mt_category1
				+ ", order_mt_category2=" + order_mt_category2 + ", order_mt_product=" + order_mt_product
				+ ", order_mt_price=" + order_mt_price + ", order_mt_date=" + order_mt_date + ", order_no=" + order_no
				+ "]";
	}
	
	
	
}
