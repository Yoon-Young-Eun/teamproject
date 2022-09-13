package com.semo.web.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.MemberDAO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderMtVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO memberDao;

	@Override
	public int getArticleCount(PagingVO pvo) {
		return memberDao.getArticleCount(pvo);
	}
	
	@Override
	public int getBlackCount(PagingVO pvo) {
		return memberDao.getBlackCount(pvo);
	}

	@Override
	public List<CustomerVO> getBoardList() {
		return memberDao.getBoardList();
	}

	@Override
	public List<CustomerVO> getBoardList(PagingVO pvo) {
		return memberDao.getBoardList(pvo);
	}	

	@Override
	public CustomerVO getRead(CustomerVO vo) {
		return memberDao.getRead(vo);
	}

	@Override
	public List<CustomerVO> getBlackList(PagingVO pvo) {
		return memberDao.getBlackList(pvo);
	}


		


}
