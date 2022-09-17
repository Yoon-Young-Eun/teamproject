package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.UtilDAO;
import com.semo.web.admin.vo.MessageVO;

@Service
public class UtilServiceImpl implements UtilService {
	
	@Autowired
	UtilDAO utildao;
	
	@Override
	public List<MessageVO> getMessageList() {
		return utildao.getMessageList();
	}
	
	
	@Override
	public List<MessageVO> getMessageTypeList(MessageVO mvo) {
		return utildao.getMessageTypeList(mvo);
	}
<<<<<<< HEAD


	@Override
	public MessageVO getQnAMessageType(MessageVO mvo) {
		return utildao.getQnAMessageType(mvo);
=======
	
	public MessageVO getMessageEstimateType() {
		return utildao.getMessageEstimateType();
>>>>>>> main
	}
}
