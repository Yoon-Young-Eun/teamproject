package com.semo.web.admin.vo;

import java.sql.Date;

public class ProductVO {
	private int product_code;
	private String product_category_parent;
	private String product_category_median;
	private String product_name;
	private String product_detail;
	private Date product_reg_date;
	private int product_price;
	private int product_business_profits;
	private int product_net_profit;
	public int getProduct_code() {
		return product_code;
	}
	public void setProduct_code(int product_code) {
		this.product_code = product_code;
	}
	public String getProduct_category_parent() {
		return product_category_parent;
	}
	public void setProduct_category_parent(String product_category_parent) {
		this.product_category_parent = product_category_parent;
	}
	public String getProduct_category_median() {
		return product_category_median;
	}
	public void setProduct_category_median(String product_category_median) {
		this.product_category_median = product_category_median;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
	public Date getProduct_reg_date() {
		return product_reg_date;
	}
	public void setProduct_reg_date(Date product_reg_date) {
		this.product_reg_date = product_reg_date;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getProduct_business_profits() {
		return product_business_profits;
	}
	public void setProduct_business_profits(int product_business_profits) {
		this.product_business_profits = product_business_profits;
	}
	public int getProduct_net_profit() {
		return product_net_profit;
	}
	public void setProduct_net_profit(int product_net_profit) {
		this.product_net_profit = product_net_profit;
	}
	
	@Override
	public String toString() {
		return "ProductVO [product_code=" + product_code + ", product_category_parent=" + product_category_parent
				+ ", product_category_median=" + product_category_median + ", product_name=" + product_name
				+ ", product_detail=" + product_detail + ", product_reg_date=" + product_reg_date + ", product_price="
				+ product_price + ", product_business_profits=" + product_business_profits + ", product_net_profit="
				+ product_net_profit + "]";
	}
	
	
	
}
