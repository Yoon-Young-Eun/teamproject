package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;

public interface MemberService {
	public int getArticleCount(PagingVO pvo);
	public int getBlackCount(PagingVO pvo);
	public List<CustomerVO> getBoardList();
	public List<CustomerVO> getBoardList(PagingVO pvo);
	public CustomerVO getRead(CustomerVO vo);
	public List<CustomerVO> getBlackList(PagingVO pvo);
	public void getMemberUpdate(CustomerVO vo);
	public List<CustomerVO> getSmsPermitList(CustomerVO vo);
	public CustomerVO getSmsPermit(CustomerVO vo);
	
	
	
}
