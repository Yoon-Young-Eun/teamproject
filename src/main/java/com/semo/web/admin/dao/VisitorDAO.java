package com.semo.web.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class VisitorDAO {

	@Autowired
	SqlSessionTemplate sql;
	
	public int getVisitor() {
		return sql.selectOne("", sql);
	}
}
