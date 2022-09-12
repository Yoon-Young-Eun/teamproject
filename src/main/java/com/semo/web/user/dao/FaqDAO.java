package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.FAQVO;

@Repository
public class FaqDAO {
	
	
	@Autowired
	SqlSessionTemplate sqltemplate;
	
	public List<FAQVO> getFaqList(String de){
		System.out.println("FaqDAO 메서드 실행");
		return sqltemplate.selectList("FaqDAO.getFaqList",de);
	}
	
	public List<FAQVO> getFaqList1(String wa){
		System.out.println("FaqDAO 메서드 실행");
		return sqltemplate.selectList("FaqDAO.getFaqList1",wa);
	}

}

