package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.NoticeVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;
import com.semo.web.user.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO boardDAO;
	
	
	//이벤트
	@Override
	public EventVO getBoardEvent(EventVO vo) {
		return boardDAO.getBoardEvent(vo);
	}

	@Override
	public List<EventVO> getBoardEventList() {
		return boardDAO.getBoardEventList();
	}

	
	//공지사항
	@Override
	public NoticeVO getBoard(NoticeVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<NoticeVO> getBoardList(PagingVO pvo) {
		return boardDAO.getBoardList(pvo);
	}

	@Override
	public int getBoardCount(PagingVO pvo) {
		return boardDAO.getBoardCount(pvo);
	}
	
	// 리뷰 입력
	@Override
	public void insertReview(ReviewVO vo) {
		boardDAO.insertReview(vo);
		
	}
}
