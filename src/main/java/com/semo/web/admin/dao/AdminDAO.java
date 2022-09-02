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
		System.out.println("DAO.getAdmin 실행");
		return sqltemplate.selectOne("AdminDAO.getAdmin",vo);
	}
	
	public void setAdmin(AdminVO vo) {
		System.out.println("DAO.setAdmin 실행");
		sqltemplate.insert("AdminDAO.setAdmin", vo);
	}
	
	public List<AdminVO> getAdminList(){
		System.out.println("DAO.getAdminList 실행");
		return sqltemplate.selectList("AdminDAO.getAdminList");
	}
	
	public AdminVO getReadStaff(AdminVO vo) {
		System.out.println("DAO.getReadStaff 실행");
		return sqltemplate.selectOne("AdminDAO.getReadStaff", vo);
	}
	
	public void updateStaff(AdminVO vo) {
		System.out.println("DAO.getUpdateStaff 실행");
		sqltemplate.update("AdminDAO.updateStaff", vo);
	}
	
	public void deleteStaff(AdminVO vo) {
		System.out.println("DAO.deleteStaff 실행");
		sqltemplate.delete("AdminDAO.deleteStaff", vo);
	}
	
	
}
