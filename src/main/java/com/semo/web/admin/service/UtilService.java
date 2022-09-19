package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;

public interface UtilService {
	public int getMessageListCount(PagingVO pvo);
	public List<MessageVO> getSupportMessageList(PagingVO pvo);
	
<<<<<<< HEAD
	public MessageVO getReadMessage(MessageVO mvo);
	public void insertMessage(MessageVO mvo);
	public void updateMessage(MessageVO mvo);
	public void deleteMessage(MessageVO mvo);
	public List<MessageVO> getMessageList();
	public List<MessageVO> getMessageTypeList();
	public MessageVO getMessageContentType(MessageVO mvo);
	public List<CustomerVO> sendMessageToAll();
=======
	public MessageVO getMessageEstimateType();
	
>>>>>>> main
}
