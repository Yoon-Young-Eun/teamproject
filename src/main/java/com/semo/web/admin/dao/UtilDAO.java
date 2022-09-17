package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.MessageVO;

@Repository
public class UtilDAO {

	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	//메세지 데이터베이스에 저장해놓은 문자데이터 가져오기
	public List<MessageVO> getMessageList(){
		System.out.println("DAO.getMessageList()실행");
	return sqlTemplate.selectList("UtilDAO.getMessageList");
	}
	
	public List<MessageVO> getMessageTypeList(MessageVO mvo){
		return sqlTemplate.selectList("UtilDAO.getMessageTypeList");
	}

<<<<<<< HEAD
	public MessageVO getQnAMessageType(MessageVO mvo) {
		return sqlTemplate.selectOne("UtilDAO.getQnAMessageType");
	}
=======
	public MessageVO getMessageEstimateType() {
		System.out.println("DAO.getMessageEstimateType()실행");
		return sqlTemplate.selectOne("UtilDAO.getMessageEstimateType");
	}
		
>>>>>>> main
	
	
}
