package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.Ad_QnAVO;
import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.FAQVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.NoticeVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CustomerVO;


public interface BoardService {
	
//	공지사항
	void insertBoard(NoticeVO vo);
	void updateBoard(NoticeVO vo);
	void deleteBoard(int no);
	void deleteBoard(NoticeVO vo);
	NoticeVO getBoard(NoticeVO vo);
	List<NoticeVO> getBoardList(PagingVO pvo);
	int getBoardCount(PagingVO pvo);
	
// 이벤트
	void insertEvent(EventVO vo);
	void updateEvent(EventVO vo);
	void deleteEvent(int no);
	void deleteEvent(EventVO vo);
	EventVO getEvent(EventVO vo);
	List<EventVO> getEventList(PagingVO pvo);
	int getEventCount(PagingVO pvo);
	
// 리뷰
	public void updateReviewBoard(ReviewVO vo);
	public void deleteReviewBoard(int no);
	public void deleteReviewBoard(ReviewVO vo);
	public ReviewVO getReadReviewBoard(ReviewVO vo);
	public List<ReviewVO> getReviewBoardList(PagingVO pvo);	
	public int getReviewArticleCount(PagingVO pvo);

// FAQ
	public void insertFAQ(FAQVO vo);
	public List<FAQVO> getFAQList(PagingVO pvo);
	public FAQVO getReadFAQ(FAQVO vo);
	public void updateFAQ(FAQVO vo);
	public void deleteFAQ(int no);
	public void deleteFAQ(FAQVO vo);
	public int getArticleCount(PagingVO pvo);

// QnA
	public void insertQnA_ad(Ad_QnAVO vo);
	public void updateQnA_cm(Cm_QnAVO vo);
	public List<Cm_QnAVO> getQnAList0();
	public List<Cm_QnAVO> getQnAList1();
	public Cm_QnAVO getReadQnA_q(Cm_QnAVO vo);
	public Cm_QnAVO getReadQnA_a(Cm_QnAVO vo);
	public CustomerVO getReadPhoneNum(CustomerVO vo);
	
}
