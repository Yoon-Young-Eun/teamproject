package com.semo.web.admin.dao;


public class Criteria {
	private int pageNum;
	private int size; //한페이지 당 출력 data 개수
	private int m_number; //회원 번호
	private int baord_num;
	private int faq_num;
	private int rw_partner_number;
	private int total_page;//페이지 전체
	private int total_block; //페이지 블록 전체
	private int block_num; //현재 페이지 블록
	private int block_start; //블록시작
	private int block_end; //블록 마지막
	private int total; //총 글 수
	private int pageConunt;

	public Criteria() {
		this(1,5,1);
	}
	
	public Criteria(int pageNum, int size, int pageConunt) {
		this.pageNum = pageNum;
		this.size =size;
		this.pageConunt = pageConunt;
	}
	
	public int getSkip() {
		return this.pageNum = (pageNum-1) *size;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getM_number() {
		return m_number;
	}

	public void setM_number(int m_number) {
		this.m_number = m_number;
	}

	public int getBaord_num() {
		return baord_num;
	}

	public void setBaord_num(int baord_num) {
		this.baord_num = baord_num;
	}

	public int getFaq_num() {
		return faq_num;
	}

	public void setFaq_num(int faq_num) {
		this.faq_num = faq_num;
	}

	public int getRw_partner_number() {
		return rw_partner_number;
	}

	public void setRw_partner_number(int rw_partner_number) {
		this.rw_partner_number = rw_partner_number;
	}

	public int getTotal_page() {
		return total_page;
	}

	public void setTotal_page(int total_page) {
		this.total_page = total_page;
	}

	public int getTotal_block() {
		return total_block;
	}

	public void setTotal_block(int total_block) {
		this.total_block = total_block;
	}

	public int getBlock_num() {
		return block_num;
	}

	public void setBlock_num(int block_num) {
		this.block_num = block_num;
	}

	public int getBlock_start() {
		return block_start;
	}

	public void setBlock_start(int block_start) {
		this.block_start = block_start;
	}

	public int getBlock_end() {
		return block_end;
	}

	public void setBlock_end(int block_end) {
		this.block_end = block_end;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getPageConunt() {
		return pageConunt;
	}

	public void setPageConunt(int pageConunt) {
		this.pageConunt = pageConunt;
	}

	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", size=" + size + ", m_number=" + m_number + ", baord_num=" + baord_num
				+ ", faq_num=" + faq_num + ", rw_partner_number=" + rw_partner_number + ", total_page=" + total_page
				+ ", total_block=" + total_block + ", block_num=" + block_num + ", block_start=" + block_start
				+ ", block_end=" + block_end + ", total=" + total + ", pageConunt=" + pageConunt + "]";
	}
	
	
	
	
	
}
