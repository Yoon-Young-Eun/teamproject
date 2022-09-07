package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.OrderMtVO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderVO;

@Repository
public class OrderDAO {

	
	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	
	public int getMemberArticleCount(PagingVO pvo) {
		System.out.println("DAO.getArticleCount()실행");
		return sqlTemplate.selectOne("OrderDAO.getMemberArticleCount", pvo);
	}
	
	
	public List<OrderMtVO> getUserOrderList(PagingVO pvo){
		System.out.println("DAO.getUserOrderList() 실행");
		return sqlTemplate.selectList("OrderDAO.getUserOrderList", pvo);
	}
	
	public int getArticleCount() {
		System.out.println("DAO.getArticleCount()실행");
		return sqlTemplate.selectOne("OrderDAO.getArticleCount");
	}
	

	public List<OrderVO> getAdminOrderList(PagingVO pvo){
		System.out.println("DAO.getAdminOrderList() 실행");
		return sqlTemplate.selectList("OrderDAO.getAdminOrderList", pvo);
	}
}
