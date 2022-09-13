package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.AdminVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.EstimateVO;

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
	
	public int getArticleCount(PagingVO pvo) {
		return sqltemplate.selectOne("AdminDAO.getArticleCount", pvo);
	}
	
	public List<AdminVO> getAdminList(PagingVO pvo){
		System.out.println("DAO.getAdminList 실행");
		return sqltemplate.selectList("AdminDAO.getAdminList", pvo);
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
	
	public void selectedDelete(int num) {
		System.out.println("DAO.seletedDelete() 메서드 실행");
		sqltemplate.delete("AdminDAO.selectedDelete", num);
	}
	
	//삭제
	public Ad_EstimateVO getEstimate(int num) {
		System.out.println("getEstimate()메서드 실행");
		return sqltemplate.selectOne("AdminDAO.getAd_Estimate", num);
	}

	
	
}
