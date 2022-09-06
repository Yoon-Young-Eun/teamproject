package com.semo.web.admin.service;

import java.util.List;
import java.util.Map;

import com.semo.web.admin.vo.CmOrderVO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;

public interface MemberService {
	public int getArticleCount();
	public List<CustomerVO> getBoardList();
	public List<CustomerVO> getBoardList(PagingVO pvo);
	public List<MessageVO> getMessageList(MessageVO vo);
	public CustomerVO getRead(CustomerVO vo);
	public List<CustomerVO> getBlackList(PagingVO pvo);

}
