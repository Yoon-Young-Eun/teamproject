package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.vo.BannerVO;
import com.semo.web.admin.vo.EventVO;
import com.semo.web.user.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public EventVO getBoardEvent(EventVO vo) {
		return boardDAO.getBoardEvent(vo);
	}

	@Override
	public List<BannerVO> getBoardEventList() {
		return boardDAO.getBoardEventList();
	}
}
