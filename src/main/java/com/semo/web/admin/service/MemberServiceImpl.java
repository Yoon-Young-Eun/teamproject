package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.MemberDAO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.CustomerVO;

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

	@Override
	public void getMemberUpdate(CustomerVO vo) {
		memberDao.getMemberUpdate(vo);
	}

	@Override
	public List<CustomerVO> getSmsPermitList(CustomerVO vo) {
		return memberDao.getSmsPermitList(vo);
	}

	@Override
	public CustomerVO getSmsPermit(CustomerVO vo) {
		return memberDao.getSmsPermit(vo);
	}

		


}
