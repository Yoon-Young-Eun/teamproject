package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.OrderMtVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderVO;

@Repository
public class SalesDAO {
	
	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	public int getArticleCount() {
		System.out.println("SalesDAO.getArticleCount() 실행");
		return sqlTemplate.selectOne("SalesDAO.getArticleCount");
	}
	
	public List<OrderVO> getStoreSalesList(PagingVO pvo){
		System.out.println("SalesDAO.getStoreSalesList() 실행");
		return sqlTemplate.selectList("SalesDAO.getStoreSalesList", pvo);
	}
	
	
	public List<OrderMtVO> getProductSalesList(PagingVO pvo){
		System.out.println("SalesDAO.getProductSalesList() 실행");
		return sqlTemplate.selectList("SalesDAO.getProductSalesList", pvo);
	}
}
