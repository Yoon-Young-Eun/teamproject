package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.AdminVO;

@Repository
public class AdminDAO {

	@Autowired
	SqlSessionTemplate sqltemplate;
	
	public AdminVO getAdmin(AdminVO vo) {
		System.out.println("Admin.getAdmin 실행");
		return sqltemplate.selectOne("AdminDAO.getAdmin",vo);
	}
	
	public void setAdmin(AdminVO vo) {
		System.out.println("Admin.setAdmin 실행");
		sqltemplate.insert("AdminDAO.setAdmin", vo);
	}
	
	public List<AdminVO> getAdminList(){
		System.out.println("Admin.getAdminList 실행");
		return sqltemplate.selectList("AdminDAO.getAdminList");
	}
	
	
	
}
