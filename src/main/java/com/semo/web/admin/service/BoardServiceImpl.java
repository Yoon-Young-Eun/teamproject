package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.BoardDAO;
import com.semo.web.admin.vo.NoticeVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public void insertBoard(NoticeVO vo) {
		boardDAO.insertBoard(vo);	
	}

	@Override
	public void updateBoard(NoticeVO vo) {
		boardDAO.updateBoard(vo);	
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
}
