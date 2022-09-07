package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.BoardDAO;
import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.NoticeVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO boardDAO;

//	공지사항
	@Override
	public void insertBoard(NoticeVO vo) {
		boardDAO.insertBoard(vo);	
	}

	@Override
	public void updateBoard(NoticeVO vo) {
		boardDAO.updateBoard(vo);	
	}
	
	@Override
	public void deleteBoard(int no) {
		boardDAO.deleteBoard(no);
		
	}
	@Override
	public void deleteBoard(NoticeVO vo) {
		boardDAO.deleteBoard(vo);	
	}

	@Override
	public NoticeVO getBoard(NoticeVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<NoticeVO> getBoardList(NoticeVO vo) {
		return boardDAO.getBoardList(vo);
	}
//----------------------------------------------

//	이벤트
	@Override
	public void insertEvent(EventVO vo) {
		boardDAO.insertEvent(vo);
	}

	@Override
	public void updateEvent(EventVO vo) {
		boardDAO.updateEvent(vo);		
	}

	@Override
	public void deleteEvent(int no) {
		boardDAO.deleteEvent(no);	
	}

	@Override
	public void deleteEvent(EventVO vo) {
		boardDAO.deleteEvent(vo);		
	}

	@Override
	public EventVO getEvent(EventVO vo) {
		return boardDAO.getEvent(vo);
	}

	@Override
	public List<EventVO> getEventList(EventVO vo) {
		return boardDAO.getEventList(vo);
	}
	

}
