package com.semo.web.user.vo;

public class OrderProductVO {
	private int product_Array_code;
	private String order_mtArray_category1;
	private String order_mtArray_category2;
	private String order_mtArray_product;
	private int order_mtArray_count;
	private int order_mtArray_price;
	private int order_mtArray_sumPrice;
	public int getProduct_Array_code() {
		return product_Array_code;
	}
	public void setProduct_Array_code(int product_Array_code) {
		this.product_Array_code = product_Array_code;
	}
	public String getOrder_mtArray_category1() {
		return order_mtArray_category1;
	}
	public void setOrder_mtArray_category1(String order_mtArray_category1) {
		this.order_mtArray_category1 = order_mtArray_category1;
	}
	public String getOrder_mtArray_category2() {
		return order_mtArray_category2;
	}
	public void setOrder_mtArray_category2(String order_mtArray_category2) {
		this.order_mtArray_category2 = order_mtArray_category2;
	}
	public String getOrder_mtArray_product() {
		return order_mtArray_product;
	}
	public void setOrder_mtArray_product(String order_mtArray_product) {
		this.order_mtArray_product = order_mtArray_product;
	}
	public int getOrder_mtArray_count() {
		return order_mtArray_count;
	}
	public void setOrder_mtArray_count(int order_mtArray_count) {
		this.order_mtArray_count = order_mtArray_count;
	}
	public int getOrder_mtArray_price() {
		return order_mtArray_price;
	}
	public void setOrder_mtArray_price(int order_mtArray_price) {
		this.order_mtArray_price = order_mtArray_price;
	}
	public int getOrder_mtArray_sumPrice() {
		return order_mtArray_sumPrice;
	}
	public void setOrder_mtArray_sumPrice(int order_mtArray_sumPrice) {
		this.order_mtArray_sumPrice = order_mtArray_sumPrice;
	}
	@Override
	public String toString() {
		return "OrderProductVO [product_Array_code=" + product_Array_code + ", order_mtArray_category1="
				+ order_mtArray_category1 + ", order_mtArray_category2=" + order_mtArray_category2
				+ ", order_mtArray_product=" + order_mtArray_product + ", order_mtArray_count=" + order_mtArray_count
				+ ", order_mtArray_price=" + order_mtArray_price + ", order_mtArray_sumPrice=" + order_mtArray_sumPrice
				+ "]";
	}
	
	
	
	
}
