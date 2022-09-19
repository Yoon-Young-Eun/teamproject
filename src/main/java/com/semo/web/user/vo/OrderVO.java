package com.semo.web.user.vo;

import java.sql.Date;

public class OrderVO {
   private int order_no;
   private String order_type;
   private int store_code;
   private Date order_date;
   private Date order_pickup_date;
   private String order_pickup_time;
   private String cm_gate_passwd;
   private String order_request1;
   private String order_request2;
   private int order_price;
   private String order_use_coupon_price;
   private String order_status;
   private String order_price_status;
   private String order_price_method;
   private int customer_no;
   private String order_customer_name;
   private String order_store_name;
   private Date order_expected_date;
   private String order_customer_phone;
   private String order_address1;
   private String order_address2;
   private String imp_uid;
   private int order_delivery_price;
   
public int getOrder_no() {
	return order_no;
}
public void setOrder_no(int order_no) {
	this.order_no = order_no;
}
public String getOrder_type() {
	return order_type;
}
public void setOrder_type(String order_type) {
	this.order_type = order_type;
}
public int getStore_code() {
	return store_code;
}
public void setStore_code(int store_code) {
	this.store_code = store_code;
}
public Date getOrder_date() {
	return order_date;
}
public void setOrder_date(Date order_date) {
	this.order_date = order_date;
}
public Date getOrder_pickup_date() {
	return order_pickup_date;
}
public void setOrder_pickup_date(Date order_pickup_date) {
	this.order_pickup_date = order_pickup_date;
}
public String getOrder_pickup_time() {
	return order_pickup_time;
}
public void setOrder_pickup_time(String order_pickup_time) {
	this.order_pickup_time = order_pickup_time;
}
public String getCm_gate_passwd() {
	return cm_gate_passwd;
}
public void setCm_gate_passwd(String cm_gate_passwd) {
	this.cm_gate_passwd = cm_gate_passwd;
}
public String getOrder_request1() {
	return order_request1;
}
public void setOrder_request1(String order_request1) {
	this.order_request1 = order_request1;
}
public String getOrder_request2() {
	return order_request2;
}
public void setOrder_request2(String order_request2) {
	this.order_request2 = order_request2;
}
public int getOrder_price() {
	return order_price;
}
public void setOrder_price(int order_price) {
	this.order_price = order_price;
}
public String getOrder_use_coupon_price() {
	return order_use_coupon_price;
}
public void setOrder_use_coupon_price(String order_use_coupon_price) {
	this.order_use_coupon_price = order_use_coupon_price;
}
public String getOrder_status() {
	return order_status;
}
public void setOrder_status(String order_status) {
	this.order_status = order_status;
}
public String getOrder_price_status() {
	return order_price_status;
}
public void setOrder_price_status(String order_price_status) {
	this.order_price_status = order_price_status;
}
public String getOrder_price_method() {
	return order_price_method;
}
public void setOrder_price_method(String order_price_method) {
	this.order_price_method = order_price_method;
}
public int getCustomer_no() {
	return customer_no;
}
public void setCustomer_no(int customer_no) {
	this.customer_no = customer_no;
}
public String getOrder_customer_name() {
	return order_customer_name;
}
public void setOrder_customer_name(String order_customer_name) {
	this.order_customer_name = order_customer_name;
}
public String getOrder_store_name() {
	return order_store_name;
}
public void setOrder_store_name(String order_store_name) {
	this.order_store_name = order_store_name;
}
public Date getOrder_expected_date() {
	return order_expected_date;
}
public void setOrder_expected_date(Date order_expected_date) {
	this.order_expected_date = order_expected_date;
}
public String getOrder_customer_phone() {
	return order_customer_phone;
}
public void setOrder_customer_phone(String order_customer_phone) {
	this.order_customer_phone = order_customer_phone;
}
public String getOrder_address1() {
	return order_address1;
}
public void setOrder_address1(String order_address1) {
	this.order_address1 = order_address1;
}
public String getOrder_address2() {
	return order_address2;
}
public void setOrder_address2(String order_address2) {
	this.order_address2 = order_address2;
}
public String getImp_uid() {
	return imp_uid;
}
public void setImp_uid(String imp_uid) {
	this.imp_uid = imp_uid;
}
public int getOrder_delivery_price() {
	return order_delivery_price;
}
public void setOrder_delivery_price(int order_delivery_price) {
	this.order_delivery_price = order_delivery_price;
}

@Override
public String toString() {
	return "OrderVO [order_no=" + order_no + ", order_type=" + order_type + ", store_code=" + store_code
			+ ", order_date=" + order_date + ", order_pickup_date=" + order_pickup_date + ", order_pickup_time="
			+ order_pickup_time + ", cm_gate_passwd=" + cm_gate_passwd + ", order_request1=" + order_request1
			+ ", order_request2=" + order_request2 + ", order_price=" + order_price + ", order_use_coupon_price="
			+ order_use_coupon_price + ", order_status=" + order_status + ", order_price_status=" + order_price_status
			+ ", order_price_method=" + order_price_method + ", customer_no=" + customer_no + ", order_customer_name="
			+ order_customer_name + ", order_store_name=" + order_store_name + ", order_expected_date="
			+ order_expected_date + ", order_customer_phone=" + order_customer_phone + ", order_address1="
			+ order_address1 + ", order_address2=" + order_address2 + ", imp_uid=" + imp_uid + ", order_delivery_price="
			+ order_delivery_price + "]";
}
   

}
