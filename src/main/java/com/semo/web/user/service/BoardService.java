package com.semo.web.user.service;

import java.util.List;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.NoticeVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;

public interface BoardService {
	
	//이벤트
	public EventVO getBoardEvent(EventVO vo);
	public List<EventVO> getBoardEventList();
	
	//공지사항
	public NoticeVO getBoard(NoticeVO vo);
	public List<NoticeVO> getBoardList(PagingVO pvo);
	int getBoardCount(PagingVO pvo);
	
	// 리뷰 입력
	public void insertReview(ReviewVO vo);
	
}
