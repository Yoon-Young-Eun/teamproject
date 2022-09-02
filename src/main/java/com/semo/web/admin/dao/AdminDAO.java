package com.semo.web.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.AdminVO;

@Repository
public class AdminDAO {

	@Autowired
	SqlSessionTemplate sqltemplate;
	
	public AdminVO getUser(AdminVO vo) {
		return sqltemplate.selectOne("AdminDAO.getUser",vo);
		
	}
	
}
