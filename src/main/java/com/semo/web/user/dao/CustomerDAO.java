package com.semo.web.user.dao;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.TermsVO;
import com.semo.web.user.vo.CustomerVO;

@Repository
public class CustomerDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	//회원 정보 수집, 로그인
	public CustomerVO getUser(CustomerVO vo){
		System.out.println("CustoemrDAO ");
		CustomerVO vo1 = sql.selectOne("CustomerVO.getMember", vo);
		return vo1;
	}
	
	//아이디 중복 체크
	public int idCheck(String id){
		int result = 0; 
		result = sql.selectOne("CustomerVO.idCheck", id);
		return result;
	}
	
	// 회원가입 승인
	public void insertUser(CustomerVO vo) {
		System.out.println("CustomerDAO");
	 sql.insert("CustomerVO.insertMember", vo);
	}

	// 비밀번호 암호화 후 저장 (회원가입시 사용)
	public void setPasswordEncoding(CustomerVO vo) {
		sql.update("CustomerVO.setPasswordEncoding",vo);
	}
	
	// 비밀번호 대조(로그인시 id를 통해 db에 있는 데이터 호출)
	public CustomerVO matchPasswd(CustomerVO vo) {
		return sql.selectOne("CustomerVO.matchPasswd", vo);
	}
	
	
	//이용약관불러오기
	public List<TermsVO> getTerms(TermsVO vo){
		return sql.selectList("CustomerVO.getTerms", vo);
	}

	
}
