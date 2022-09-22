package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.CouponVO;
import com.semo.web.admin.vo.TermsVO;

@Repository
public class TermsDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	public List<TermsVO> getTermsList(){
		System.out.println("DAO.getTermsList 실행");
		return sql.selectList("SiteDAO.getTermsList");
	}
	
	public TermsVO getTermsMain(TermsVO vo) {
		System.out.println("DAO.getTerms3 실행");
		return sql.selectOne("SiteDAO.getTermsMain", vo);
	}
	
	public TermsVO getTerms4(TermsVO vo) {
		System.out.println("DAO.getTerms4 실행");
		return sql.selectOne("SiteDAO.getReadTerms4", vo);
	}
	
}
