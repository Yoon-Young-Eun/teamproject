package com.semo.web.admin.vo;

public class PagingQVO {
	
	public String searchCondition4;
	public String searchKeyword4;
	public int startRow2;
	public int endRow2;
	public String selectPage2;
	public String pageNum2;
	public String getSearchCondition4() {
		return searchCondition4;
	}
	public void setSearchCondition4(String searchCondition4) {
		this.searchCondition4 = searchCondition4;
	}
	public String getSearchKeyword4() {
		return searchKeyword4;
	}
	public void setSearchKeyword4(String searchKeyword4) {
		this.searchKeyword4 = searchKeyword4;
	}
	public int getStartRow2() {
		return startRow2;
	}
	public void setStartRow2(int startRow2) {
		this.startRow2 = startRow2;
	}
	public int getEndRow2() {
		return endRow2;
	}
	public void setEndRow2(int endRow2) {
		this.endRow2 = endRow2;
	}
	public String getSelectPage2() {
		return selectPage2;
	}
	public void setSelectPage2(String selectPage2) {
		this.selectPage2 = selectPage2;
	}
	public String getPageNum2() {
		return pageNum2;
	}
	public void setPageNum2(String pageNum2) {
		this.pageNum2 = pageNum2;
	}
	@Override
	public String toString() {
		return "Paging2VO [searchCondition4=" + searchCondition4 + ", searchKeyword4=" + searchKeyword4 + ", startRow2="
				+ startRow2 + ", endRow2=" + endRow2 + ", selectPage2=" + selectPage2 + ", pageNum2=" + pageNum2 + "]";
	}

	
	
}
