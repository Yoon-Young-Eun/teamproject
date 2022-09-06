package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.CmOrderVO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	public int getArticleCount() {
		System.out.println("DAO.getArticleCount()실행");
		return sqlTemplate.selectOne("MemberDAO.getArticleCount");
	}
	
	public List<CustomerVO> getBoardList(){
		System.out.println("DAO.getBoardList()실행");
		return sqlTemplate.selectList("MemberDAO.getBoardList");
	}
	
	public List<CustomerVO> getBoardList(PagingVO pvo) {	
		System.out.println("DAO.getBoardList()실행");
		return sqlTemplate.selectList("MemberDAO.getArticeList", pvo);
	}
	
	//메세지 데이터베이스에 저장해놓은 문자데이터 가져오기
	public List<MessageVO> getMessageList(MessageVO vo){
		System.out.println("DAO.getMessageList()실행");
	return sqlTemplate.selectList("MemberDAO.getMessageList", vo);
	}
	
	public CustomerVO getRead(CustomerVO vo) {
		System.out.println("DAO.getRead() 실행");
		return sqlTemplate.selectOne("MemberDAO.getRead", vo);
	}
	
	public List<CustomerVO> getBlackList(PagingVO pvo){
		System.out.println("DAO.getBlackList() 실행");
		return sqlTemplate.selectList("MemberDAO.getBlackList", pvo);
	}

}
