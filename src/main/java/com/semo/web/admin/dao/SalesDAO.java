package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Repository
public class SalesDAO {
	
	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	public int getStoreArticleCount(PagingVO pvo) {
		System.out.println("SalesDAO.getArticleCount() 실행");
		return sqlTemplate.selectOne("SalesDAO.getStoreArticleCount", pvo);
	}
	
	public int getProductArticleCount(PagingVO pvo) {
		System.out.println("SalesDAO.getProductArticleCount() 실행");
		return sqlTemplate.selectOne("SalesDAO.getProductArticleCount", pvo);
	}
	
	public List<OrderVO> getStoreSalesList(PagingVO pvo){
		System.out.println("SalesDAO.getStoreSalesList() 실행");
		return sqlTemplate.selectList("SalesDAO.getStoreSalesList", pvo);
	}
	
	public List<OrderMtVO> getProductSalesList(PagingVO pvo){
		System.out.println("SalesDAO.getProductSalesList() 실행");
		return sqlTemplate.selectList("SalesDAO.getProductSalesList", pvo);
	}
	
	public List<OrderMtVO> getDoughnutChart(PagingVO pvo){
		return sqlTemplate.selectList("SalesDAO.getDoughnutChart", pvo);
	}
	
	public List<OrderVO> getBarChart(PagingVO pvo){
		return sqlTemplate.selectList("SalesDAO.getBarChart", pvo);
	}
	
	public List<OrderVO> getMainBarChart(PagingVO pvo){
		return sqlTemplate.selectList("SalesDAO.getMainBarChart",pvo);
	}
	
	public List<OrderVO> getSaleStoreSearchTitle2() {
		return sqlTemplate.selectList("SalesDAO.getSaleStoreSearchTitle2");
	}
	
	public List<OrderVO> getSaleStoreSearchTitle3() {
		return sqlTemplate.selectList("SalesDAO.getSaleStoreSearchTitle3");
	}
	
	
	
	
}
