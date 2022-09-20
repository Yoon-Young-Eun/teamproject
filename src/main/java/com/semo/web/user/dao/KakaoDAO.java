package com.semo.web.user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.user.vo.CustomerVO;

@Repository
public class KakaoDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessiontemplate;
	
	public CustomerVO selectUserId(CustomerVO vo) {
		return sqlSessiontemplate.selectOne("KakaoUser.selectUserId",vo);
	}
}
