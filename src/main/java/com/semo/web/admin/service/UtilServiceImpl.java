package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.UtilDAO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;

@Service
public class UtilServiceImpl implements UtilService {
	
	@Autowired
	UtilDAO utildao;
	
	@Override
	public List<MessageVO> getSupportMessageList(PagingVO pvo) {
		return utildao.getSupportMessageList(pvo);
	}
	
	@Override
	public List<MessageVO> getMessageList() {
		return utildao.getMessageList();
	}
	

	@Override
	public MessageVO getReadMessage(MessageVO mvo) {
		return utildao.getReadMessage(mvo);
	}

	@Override
	public void insertMessage(MessageVO mvo) {
		utildao.insertMessage(mvo);
	}

	@Override
	public void updateMessage(MessageVO mvo) {
		utildao.updateMessage(mvo);
	}

	@Override
	public void deleteMessage(MessageVO mvo) {
	    utildao.deleteMessage(mvo);	
	}

	
	@Override
	public List<MessageVO> getMessageTypeList() {
		return utildao.getMessageTypeList();
	}

<<<<<<< HEAD
	@Override
	public MessageVO getQnAMessageType(MessageVO mvo) {
		return utildao.getQnAMessageType(mvo);
	}
=======


	@Override
	public MessageVO getMessageContentType(MessageVO mvo) {
		return utildao.getMessageContentType(mvo);
	}

	@Override
	public int getMessageListCount(PagingVO pvo) {
		return utildao.getMessageListCount(pvo);
	}

	@Override
	public List<CustomerVO> sendMessageToAll() {
		return utildao.sendMessageToAll();
	}

>>>>>>> main
	
	public MessageVO getMessageEstimateType() {
		return utildao.getMessageEstimateType();

	}


}
