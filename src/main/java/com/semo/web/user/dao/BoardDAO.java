package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.EventVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public EventVO getBoardEvent(EventVO vo) {
		return sql.selectOne("BoardDAO.getEvent",vo);
	}
	
	public List<EventVO> getBoardEventList(){
		System.out.println("DAO.getBoardEventList 실행");
		return sql.selectList("BoardDAO.getBoardEventList");
	}
	
}
