package com.semo.web.admin.vo;

public class PagingVO {

	public String searchCondition;
	public String searchKeyword;
	public int startRow;
	public int endRow;
	public String selectPage;
	public String pageNum;
	public int customer_no;
	
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public String getSelectPage() {
		return selectPage;
	}
	public void setSelectPage(String selectPage) {
		this.selectPage = selectPage;
	}
	public String getPageNum() {
		return pageNum;
	}
	public void setPageNum(String pageNum) {
		this.pageNum = pageNum;
	}
	
	@Override
	public String toString() {
		return "PagingVO [searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", startRow="
				+ startRow + ", endRow=" + endRow + ", selectPage=" + selectPage + ", pageNum=" + pageNum
				+ ", customer_no=" + customer_no + "]";
	}

}
