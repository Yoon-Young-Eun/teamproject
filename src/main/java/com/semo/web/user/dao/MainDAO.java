package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.ReviewVO;

@Repository
public class MainDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	public List<EventVO> getMain(PagingVO vo){
		System.out.println("MainDAO.getMain EventList 불러오기 실행");
		return sql.selectList("MainDAO.getMain", vo);
	}
	
	// 메인 리뷰
	public List<ReviewVO> getMainReview(){
		System.out.println("MainDAO.getMainReview ReviewList 불러오기 실행");
		return sql.selectList("MainDAO.getMainReview");
	}
}
