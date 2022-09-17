package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.MessageVO;

public interface UtilService {
	public List<MessageVO> getMessageList();
	public List<MessageVO> getMessageTypeList(MessageVO mvo);
<<<<<<< HEAD
	public MessageVO getQnAMessageType(MessageVO mvo);
=======
	
	public MessageVO getMessageEstimateType();
	
>>>>>>> main

}
