package com.semo.web.user.vo;

import java.util.Date;

public class OrderVO {
	private int ORDER_NO;
	private String ORDER_TYPE;
	private String ORDER_PRODUCT;
	private int STORE_CODE;
	private Date ORDER_DATE;
	private Date ORDER_PICKUP_DATE;
	private String CM_GATE_PASSWD;
	private String ORDER_REQUEST1;
	private String ORDER_REQUEST2;
	private int ORDER_PRICE;
	private String ORDER_USE_COUPON_PRICE;
	private String ORDER_STATUS;
	private String ORDER_PRICE_STATUS;
	private String ORDER_PRICE_METHOD;
	private int CUSTOMER_NO;
	private String ORDER_CUTOMER_NAME;
	private String ORDER_STORE_NAME;
	private Date ORDER_EXPECTED_DATE;
	private String ORDER_CUSTOMER_PHONE;
	private String ORDER_ADDRESS1;
	private String ORDER_ADDRESS2;
	private int ORDER_DELIVERY_PRICE;
	public int getORDER_NO() {
		return ORDER_NO;
	}
	public void setORDER_NO(int oRDER_NO) {
		ORDER_NO = oRDER_NO;
	}
	public String getORDER_TYPE() {
		return ORDER_TYPE;
	}
	public void setORDER_TYPE(String oRDER_TYPE) {
		ORDER_TYPE = oRDER_TYPE;
	}
	public String getORDER_PRODUCT() {
		return ORDER_PRODUCT;
	}
	public void setORDER_PRODUCT(String oRDER_PRODUCT) {
		ORDER_PRODUCT = oRDER_PRODUCT;
	}
	public int getSTORE_CODE() {
		return STORE_CODE;
	}
	public void setSTORE_CODE(int sTORE_CODE) {
		STORE_CODE = sTORE_CODE;
	}
	public Date getORDER_DATE() {
		return ORDER_DATE;
	}
	public void setORDER_DATE(Date oRDER_DATE) {
		ORDER_DATE = oRDER_DATE;
	}
	public Date getORDER_PICKUP_DATE() {
		return ORDER_PICKUP_DATE;
	}
	public void setORDER_PICKUP_DATE(Date oRDER_PICKUP_DATE) {
		ORDER_PICKUP_DATE = oRDER_PICKUP_DATE;
	}
	public String getCM_GATE_PASSWD() {
		return CM_GATE_PASSWD;
	}
	public void setCM_GATE_PASSWD(String cM_GATE_PASSWD) {
		CM_GATE_PASSWD = cM_GATE_PASSWD;
	}
	public String getORDER_REQUEST1() {
		return ORDER_REQUEST1;
	}
	public void setORDER_REQUEST1(String oRDER_REQUEST1) {
		ORDER_REQUEST1 = oRDER_REQUEST1;
	}
	public String getORDER_REQUEST2() {
		return ORDER_REQUEST2;
	}
	public void setORDER_REQUEST2(String oRDER_REQUEST2) {
		ORDER_REQUEST2 = oRDER_REQUEST2;
	}
	public int getORDER_PRICE() {
		return ORDER_PRICE;
	}
	public void setORDER_PRICE(int oRDER_PRICE) {
		ORDER_PRICE = oRDER_PRICE;
	}
	public String getORDER_USE_COUPON_PRICE() {
		return ORDER_USE_COUPON_PRICE;
	}
	public void setORDER_USE_COUPON_PRICE(String oRDER_USE_COUPON_PRICE) {
		ORDER_USE_COUPON_PRICE = oRDER_USE_COUPON_PRICE;
	}
	public String getORDER_STATUS() {
		return ORDER_STATUS;
	}
	public void setORDER_STATUS(String oRDER_STATUS) {
		ORDER_STATUS = oRDER_STATUS;
	}
	public String getORDER_PRICE_STATUS() {
		return ORDER_PRICE_STATUS;
	}
	public void setORDER_PRICE_STATUS(String oRDER_PRICE_STATUS) {
		ORDER_PRICE_STATUS = oRDER_PRICE_STATUS;
	}
	public String getORDER_PRICE_METHOD() {
		return ORDER_PRICE_METHOD;
	}
	public void setORDER_PRICE_METHOD(String oRDER_PRICE_METHOD) {
		ORDER_PRICE_METHOD = oRDER_PRICE_METHOD;
	}
	public int getCUSTOMER_NO() {
		return CUSTOMER_NO;
	}
	public void setCUSTOMER_NO(int cUSTOMER_NO) {
		CUSTOMER_NO = cUSTOMER_NO;
	}
	public String getORDER_CUTOMER_NAME() {
		return ORDER_CUTOMER_NAME;
	}
	public void setORDER_CUTOMER_NAME(String oRDER_CUTOMER_NAME) {
		ORDER_CUTOMER_NAME = oRDER_CUTOMER_NAME;
	}
	public String getORDER_STORE_NAME() {
		return ORDER_STORE_NAME;
	}
	public void setORDER_STORE_NAME(String oRDER_STORE_NAME) {
		ORDER_STORE_NAME = oRDER_STORE_NAME;
	}
	public Date getORDER_EXPECTED_DATE() {
		return ORDER_EXPECTED_DATE;
	}
	public void setORDER_EXPECTED_DATE(Date oRDER_EXPECTED_DATE) {
		ORDER_EXPECTED_DATE = oRDER_EXPECTED_DATE;
	}
	public String getORDER_CUSTOMER_PHONE() {
		return ORDER_CUSTOMER_PHONE;
	}
	public void setORDER_CUSTOMER_PHONE(String oRDER_CUSTOMER_PHONE) {
		ORDER_CUSTOMER_PHONE = oRDER_CUSTOMER_PHONE;
	}
	public String getORDER_ADDRESS1() {
		return ORDER_ADDRESS1;
	}
	public void setORDER_ADDRESS1(String oRDER_ADDRESS1) {
		ORDER_ADDRESS1 = oRDER_ADDRESS1;
	}
	public String getORDER_ADDRESS2() {
		return ORDER_ADDRESS2;
	}
	public void setORDER_ADDRESS2(String oRDER_ADDRESS2) {
		ORDER_ADDRESS2 = oRDER_ADDRESS2;
	}
	public int getORDER_DELIVERY_PRICE() {
		return ORDER_DELIVERY_PRICE;
	}
	public void setORDER_DELIVERY_PRICE(int oRDER_DELIVERY_PRICE) {
		ORDER_DELIVERY_PRICE = oRDER_DELIVERY_PRICE;
	}
	@Override
	public String toString() {
		return "OrderVO [ORDER_NO=" + ORDER_NO + ", ORDER_TYPE=" + ORDER_TYPE + ", ORDER_PRODUCT=" + ORDER_PRODUCT
				+ ", STORE_CODE=" + STORE_CODE + ", ORDER_DATE=" + ORDER_DATE + ", ORDER_PICKUP_DATE="
				+ ORDER_PICKUP_DATE + ", CM_GATE_PASSWD=" + CM_GATE_PASSWD + ", ORDER_REQUEST1=" + ORDER_REQUEST1
				+ ", ORDER_REQUEST2=" + ORDER_REQUEST2 + ", ORDER_PRICE=" + ORDER_PRICE + ", ORDER_USE_COUPON_PRICE="
				+ ORDER_USE_COUPON_PRICE + ", ORDER_STATUS=" + ORDER_STATUS + ", ORDER_PRICE_STATUS="
				+ ORDER_PRICE_STATUS + ", ORDER_PRICE_METHOD=" + ORDER_PRICE_METHOD + ", CUSTOMER_NO=" + CUSTOMER_NO
				+ ", ORDER_CUTOMER_NAME=" + ORDER_CUTOMER_NAME + ", ORDER_STORE_NAME=" + ORDER_STORE_NAME
				+ ", ORDER_EXPECTED_DATE=" + ORDER_EXPECTED_DATE + ", ORDER_CUSTOMER_PHONE=" + ORDER_CUSTOMER_PHONE
				+ ", ORDER_ADDRESS1=" + ORDER_ADDRESS1 + ", ORDER_ADDRESS2=" + ORDER_ADDRESS2
				+ ", ORDER_DELIVERY_PRICE=" + ORDER_DELIVERY_PRICE + "]";
	}
	
	
	
	
}
