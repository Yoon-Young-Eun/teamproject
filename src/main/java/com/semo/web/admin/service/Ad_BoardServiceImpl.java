package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.Ad_BoardDAO;
import com.semo.web.admin.vo.Ad_QnAVO;
import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.FAQVO;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.admin.vo.NoticeVO;
import com.semo.web.admin.vo.PagingQVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CustomerVO;

@Service
public class Ad_BoardServiceImpl implements Ad_BoardService {

	@Autowired
	Ad_BoardDAO boardDAO;

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
	public List<NoticeVO> getBoardList(PagingVO pvo) {
		return boardDAO.getBoardList(pvo);
	}

	@Override
	public int getBoardCount(PagingVO pvo) {
		return boardDAO.getBoardCount(pvo);
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
	public List<EventVO> getEventList(PagingVO pvo) {
		return boardDAO.getEventList(pvo);
	}
	
	@Override
	public int getEventCount(PagingVO pvo) {
		return boardDAO.getEventCount(pvo);
	}
//----------------------------------------------
	
// 리뷰	
	@Override
	public void deleteReviewBoard(int no) {
		boardDAO.deleteReviewBoard(no);
		
	}

	@Override
	public void deleteReviewBoard(ReviewVO vo) {
		boardDAO.deleteReviewBoard(vo);
		
	}

	@Override
	public ReviewVO getReadReviewBoard(ReviewVO vo) {
		return boardDAO.getReadReviewBoard(vo);
	}

	@Override
	public List<ReviewVO> getReviewBoardList(PagingVO pvo) {
		return boardDAO.getReviewBoardList(pvo);
	}

	@Override
	public void updateReviewBoard(ReviewVO vo) {
		boardDAO.updateReviewBoard(vo);
		
	}

	@Override
	public int getReviewArticleCount(PagingVO pvo) {
		return boardDAO.getReviewArticleCount(pvo);
	}
//----------------------------------------------

// FAQ	
	@Override
	public void insertFAQ(FAQVO vo) {
		boardDAO.insertFAQ(vo);
	}

	@Override
	public List<FAQVO> getFAQList(PagingVO pvo) {
		return boardDAO.getFAQList(pvo);
	}

	@Override
	public FAQVO getReadFAQ(FAQVO vo) {
		return boardDAO.getReadFAQ(vo);
	}

	@Override
	public void updateFAQ(FAQVO vo) {
		boardDAO.updateFAQ(vo);
	}

	@Override
	public void deleteFAQ(int no) {
		boardDAO.deleteFAQ(no);
	}

	@Override
	public void deleteFAQ(FAQVO vo) {
		boardDAO.deleteFAQ(vo);
	}

	@Override
	public int getArticleCount(PagingVO pvo) {
		return boardDAO.getArticleCount(pvo);
	}
//----------------------------------------------
	
// QnA
	@Override
	public List<Cm_QnAVO> getQnAList0(PagingQVO qvo) {
		return boardDAO.getQnAList0(qvo);
	}
	@Override
	public List<Cm_QnAVO> getQnAList1(PagingVO pvo) {
		return boardDAO.getQnAList1(pvo);
	}

	@Override
	public Cm_QnAVO getReadQnA_q(Cm_QnAVO vo) {
		return boardDAO.getReadQnA_q(vo);
	}
	
	@Override
	public Cm_QnAVO getReadQnA_a(Cm_QnAVO vo) {
		return boardDAO.getReadQnA_a(vo);
	}

	@Override
	public void insertQnA_ad(Ad_QnAVO vo) {
		boardDAO.insertQnA_ad(vo);
	}

	@Override
	public void updateQnA_cm(Cm_QnAVO vo) {
		boardDAO.updateQnA_cm(vo);
	}

	@Override
	public CustomerVO getReadPhoneNum(CustomerVO vo) {
		return boardDAO.getReadPhoneNum(vo);
	}

	@Override
	public int getCmQnACount(PagingQVO qvo) {
		return boardDAO.getCmQnACount(qvo);
	}

	@Override
	public int getAdQnACount(PagingVO pvo) {
		return boardDAO.getAdQnACount(pvo);
	}

	
	

	
}
