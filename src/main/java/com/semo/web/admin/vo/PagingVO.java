package com.semo.web.admin.vo;

public class PagingVO {

	public String searchCondition;
	public String searchCondition1;
	public String searchCondition2;
	public String searchCondition3;
	public String searchKeyword;
	public String searchKeyword1;
	public String searchKeyword2;
	public String searchKeyword3;
	public String startDate;
	public String endDate;
	public String chartDate;
	public int startRow;
	public int endRow;
	public String selectPage;
	public String pageNum;
	public int customer_no;
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchCondition1() {
		return searchCondition1;
	}
	public void setSearchCondition1(String searchCondition1) {
		this.searchCondition1 = searchCondition1;
	}
	public String getSearchCondition2() {
		return searchCondition2;
	}
	public void setSearchCondition2(String searchCondition2) {
		this.searchCondition2 = searchCondition2;
	}
	public String getSearchCondition3() {
		return searchCondition3;
	}
	public void setSearchCondition3(String searchCondition3) {
		this.searchCondition3 = searchCondition3;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getSearchKeyword1() {
		return searchKeyword1;
	}
	public void setSearchKeyword1(String searchKeyword1) {
		this.searchKeyword1 = searchKeyword1;
	}
	public String getSearchKeyword2() {
		return searchKeyword2;
	}
	public void setSearchKeyword2(String searchKeyword2) {
		this.searchKeyword2 = searchKeyword2;
	}
	public String getSearchKeyword3() {
		return searchKeyword3;
	}
	public void setSearchKeyword3(String searchKeyword3) {
		this.searchKeyword3 = searchKeyword3;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getChartDate() {
		return chartDate;
	}
	public void setChartDate(String chartDate) {
		this.chartDate = chartDate;
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
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	@Override
	public String toString() {
		return "PagingVO [searchCondition=" + searchCondition + ", searchCondition1=" + searchCondition1
				+ ", searchCondition2=" + searchCondition2 + ", searchCondition3=" + searchCondition3
				+ ", searchKeyword=" + searchKeyword + ", searchKeyword1=" + searchKeyword1 + ", searchKeyword2="
				+ searchKeyword2 + ", searchKeyword3=" + searchKeyword3 + ", startDate=" + startDate + ", endDate="
				+ endDate + ", chartDate=" + chartDate + ", startRow=" + startRow + ", endRow=" + endRow
				+ ", selectPage=" + selectPage + ", pageNum=" + pageNum + ", customer_no=" + customer_no + "]";
	}	
}
