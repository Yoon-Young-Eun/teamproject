package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.CmOrderVO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.PagingVO;

@Repository
public class OrderDAO {

	
	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	public List<CmOrderVO> getUserOrderList(PagingVO pvo){
		System.out.println("DAO.getUserOrderList() 실행");
		return sqlTemplate.selectList("OrderDAO.getUserOrderList", pvo);
	}
	
	public int getArticleCount(PagingVO pvo) {
		System.out.println("DAO.getArticleCount()실행");
		return sqlTemplate.selectOne("OrderDAO.getArticleCount", pvo);
	}
	
}
