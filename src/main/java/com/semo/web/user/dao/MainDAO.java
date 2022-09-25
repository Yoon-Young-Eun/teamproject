package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.EventVO;

@Repository
public class MainDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	public List<EventVO> getMain(EventVO vo){
		System.out.println("MainDAO.getMain EventList 불러오기 실행");
		return sql.selectList("MainDAO.getMain", vo);
	}
}
