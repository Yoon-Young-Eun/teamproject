package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;

@Repository
public class UtilDAO {

	@Autowired
	SqlSessionTemplate sqlTemplate;
	
	public int getMessageListCount(PagingVO mvo) {
		return sqlTemplate.selectOne("UtilDAO.getMessageListCount", mvo);
	}
	
	public List<MessageVO> getSupportMessageList(PagingVO pvo){
	return sqlTemplate.selectList("UtilDAO.getSupportMessageList", pvo);
	}
	
	
	public MessageVO getReadMessage(MessageVO mvo) {
		return sqlTemplate.selectOne("UtilDAO.getReadMessage",mvo);
	}
	
	public void insertMessage(MessageVO mvo) {
		sqlTemplate.insert("UtilDAO.insertMessage",mvo);
	}
	
	public void updateMessage(MessageVO mvo) {
		sqlTemplate.update("UtilDAO.updateMessage", mvo);
	}
	
	public void deleteMessage(MessageVO mvo) {
		sqlTemplate.delete("UtilDAO.deleteMessage", mvo);
	}
	
	public List<CustomerVO> sendMessageToAll(){
		return sqlTemplate.selectList("UtilDAO.sendMessageToAll");
	}

	
	//메세지 데이터베이스에 저장해놓은 문자데이터 가져오기
	public List<MessageVO> getMessageList(){
		System.out.println("DAO.getMessageList()실행");
	return sqlTemplate.selectList("UtilDAO.getMessageList");
	}
	
	public List<MessageVO> getMessageTypeList(){
		return sqlTemplate.selectList("UtilDAO.getMessageTypeList");
	}

	public MessageVO getMessageContentType(MessageVO mvo){
		return sqlTemplate.selectOne("UtilDAO.getMessageContentType", mvo);
	}
	


}
