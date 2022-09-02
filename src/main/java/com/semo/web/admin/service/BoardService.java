package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.NoticeVO;

public interface BoardService {
	void insertBoard(NoticeVO vo);
	void updateBoard(NoticeVO vo);
	void deleteBoard(NoticeVO vo);
	NoticeVO getBoard(NoticeVO vo);
	List<NoticeVO> getBoardList(NoticeVO vo);
}
