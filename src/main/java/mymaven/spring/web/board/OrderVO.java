package mymaven.spring.web.board;

public class OrderVO {

	private String order_code;
	private String goods_parent_code;
	private String goods_sub_code;
	private int goods_sell_price;
	private String order_status; 
	private String member;
	
	public String getOrder_code() {
		return order_code;
	}
	public void setOrder_code(String order_code) {
		this.order_code = order_code;
	}
	public String getGoods_parent_code() {
		return goods_parent_code;
	}
	public void setGoods_parent_code(String goods_parent_code) {
		this.goods_parent_code = goods_parent_code;
	}
	public String getGoods_sub_code() {
		return goods_sub_code;
	}
	public void setGoods_sub_code(String goods_sub_code) {
		this.goods_sub_code = goods_sub_code;
	}
	public int getGoods_sell_price() {
		return goods_sell_price;
	}
	public void setGoods_sell_price(int goods_sell_price) {
		this.goods_sell_price = goods_sell_price;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public String getMember() {
		return member;
	}
	public void setMember(String member) {
		this.member = member;
	} 
	
}
