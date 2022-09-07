package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.NoticeVO;

public interface BoardService {
	
//	공지사항
	void insertBoard(NoticeVO vo);
	void updateBoard(NoticeVO vo);
	void deleteBoard(int no);
	void deleteBoard(NoticeVO vo);
	NoticeVO getBoard(NoticeVO vo);
	List<NoticeVO> getBoardList(NoticeVO vo);
	
// 이벤트
	void insertEvent(EventVO vo);
	void updateEvent(EventVO vo);
	void deleteEvent(int no);
	void deleteEvent(EventVO vo);
	EventVO getEvent(EventVO vo);
	List<EventVO> getEventList(EventVO vo);
}
