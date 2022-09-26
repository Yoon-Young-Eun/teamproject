package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	public int getArticleCount(PagingVO pvo) {
		System.out.println("DAO.getArticleCount()실행");
		return sqlTemplate.selectOne("MemberDAO.getArticleCount", pvo);
	}
	
	public int getBlackCount(PagingVO pvo) {
		System.out.println("DAO.getBlackCount()실행");
		return sqlTemplate.selectOne("MemberDAO.getBlackCount", pvo);
	}
	
	
	public List<CustomerVO> getBoardList(){
		System.out.println("DAO.getBoardList()실행");
		return sqlTemplate.selectList("MemberDAO.getBoardList");
	}
	
	public List<CustomerVO> getBoardList(PagingVO pvo) {	
		System.out.println("DAO.getBoardList()실행");
		return sqlTemplate.selectList("MemberDAO.getArticeList", pvo);
	}
	
	public CustomerVO getRead(CustomerVO vo) {
		System.out.println("DAO.getRead() 실행");
		return sqlTemplate.selectOne("MemberDAO.getRead", vo);
	}
	
	public List<CustomerVO> getBlackList(PagingVO pvo){
		System.out.println("DAO.getBlackList() 실행");
		return sqlTemplate.selectList("MemberDAO.getBlackList", pvo);
	}
	
	public void getMemberUpdate(CustomerVO vo) {
		System.out.println("getMemberUpdate()메서드 실행");
		sqlTemplate.update("MemberDAO.getMemberUpdate", vo);
	}

	public List<CustomerVO> getSmsPermitList(CustomerVO vo){
		System.out.println("getSmsPermit() 메서드 실행");
		return sqlTemplate.selectList("MemberDAO.getSmsPermitList", vo);
	}
	
	public CustomerVO getSmsPermit(CustomerVO vo) {
		System.out.println("getSmsPermit() 메서드 실행");
		return sqlTemplate.selectOne("MemberDAO.getSmsPermit",vo);
	}
}
