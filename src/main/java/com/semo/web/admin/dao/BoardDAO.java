package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.Ad_QnAVO;
import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.FAQVO;
import com.semo.web.admin.vo.NoticeVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;
import com.semo.web.user.vo.Cm_QnAVO;
import com.semo.web.user.vo.CustomerVO;

@Repository
public class BoardDAO {

	public BoardDAO() {}

	@Autowired
	SqlSessionTemplate sqltemplate;

//공지사항
	public void insertBoard(NoticeVO vo) {
		sqltemplate.insert("BoardDAO.insertBoard",vo);

	}

	public void updateBoard(NoticeVO vo) {
		sqltemplate.update("BoardDAO.updateBoard",vo);

	}

	public void deleteBoard(NoticeVO vo) {
		sqltemplate.delete("BoardDAO.deleteBoard",vo);

	}
	
	public void deleteBoard(int no) {
		sqltemplate.delete("BoardDAO.deleteBoard",no);

	}


	public NoticeVO getBoard(NoticeVO vo) {
		return sqltemplate.selectOne("BoardDAO.getBoard",vo);
	}

	public List<NoticeVO> getBoardList(PagingVO pvo) {
		return sqltemplate.selectList("BoardDAO.getBoardList",pvo);
	}
	
	public int getBoardCount(PagingVO pvo) {
		return sqltemplate.selectOne("BoardDAO.getBoardCount", pvo);
	}

//이벤트
	public void insertEvent(EventVO vo) {
		sqltemplate.insert("BoardDAO.insertEvent",vo);

	}

	public void updateEvent(EventVO vo) {
		sqltemplate.update("BoardDAO.updateEvent",vo);

	}

	public void deleteEvent(EventVO vo) {
		sqltemplate.delete("BoardDAO.deleteEvent",vo);

	}
	
	public void deleteEvent(int no) {
		sqltemplate.delete("BoardDAO.deleteEvent",no);

	}


	public EventVO getEvent(EventVO vo) {
		return sqltemplate.selectOne("BoardDAO.getEvent",vo);
	}

	public List<EventVO> getEventList(PagingVO pvo) {
		return sqltemplate.selectList("BoardDAO.getEventList",pvo);
	}
	
	public int getEventCount(PagingVO pvo) {
		return sqltemplate.selectOne("BoardDAO.getEventCount", pvo);
	}
	
//리뷰
	public void deleteReviewBoard(ReviewVO vo) {
		sqltemplate.delete("BoardDAO.deleteReviewBoard",vo);

	}
	
	public void deleteReviewBoard(int no) {
		sqltemplate.delete("BoardDAO.deleteReviewBoard",no);

	}

	public ReviewVO getReadReviewBoard(ReviewVO vo) {
		return sqltemplate.selectOne("BoardDAO.getReadReviewBoard",vo);
	}

	public List<ReviewVO> getReviewBoardList(PagingVO pvo) {
		return sqltemplate.selectList("BoardDAO.getReviewBoardList",pvo);
	}
	public int getReviewArticleCount(PagingVO pvo) {
		return sqltemplate.selectOne("BoardDAO.getReviewArticleCount", pvo);
	}
	
	public void updateReviewBoard(ReviewVO vo) {
		System.out.println("---> MyBatis로 updateReview() 기능 처리");
		sqltemplate.update("BoardDAO.updateReviewBoard", vo);
	}
	
// FAQ
	public void insertFAQ(FAQVO vo) {
		System.out.println("---> MyBatis로 insertFAQ() 기능 처리");
		sqltemplate.insert("BoardDAO.insertFAQ", vo);
	}
	
	public int getArticleCount(PagingVO pvo) {
		return sqltemplate.selectOne("BoardDAO.getArticleCount", pvo);
	}

	public List<FAQVO> getFAQList(PagingVO pvo){
		System.out.println("DAO.getFAQList 실행");
		return sqltemplate.selectList("BoardDAO.getFAQList", pvo);
	}
	
	public FAQVO getReadFAQ(FAQVO vo) {
		System.out.println("DAO.getReadFAQ 실행");
		return sqltemplate.selectOne("BoardDAO.getReadFAQ", vo);
	}
	
	public void updateFAQ(FAQVO vo) {
		System.out.println("DAO.getUpdateFAQ 실행");
		sqltemplate.update("BoardDAO.updateFAQ", vo);
	}
	
	public void deleteFAQ(FAQVO vo) {
		System.out.println("DAO.deleteFAQ 실행");
		sqltemplate.delete("BoardDAO.deleteFAQ", vo);
	}
	
	public void deleteFAQ(int no) {
		System.out.println("DAO.deleteFAQ 실행");
		sqltemplate.delete("BoardDAO.deleteFAQ",no);
	}
	
// QnA
	public List<Cm_QnAVO> getQnAList0(){
		System.out.println("DAO.getQnAList0 실행");
		return sqltemplate.selectList("cm_BoardDAO.getQnAList0");
	}
	public List<Cm_QnAVO> getQnAList1(){
		System.out.println("DAO.getQnAList1 실행");
		return sqltemplate.selectList("cm_BoardDAO.getQnAList1");
	}
	
	public Cm_QnAVO getReadQnA_q(Cm_QnAVO vo) {
		System.out.println("DAO.getReadQnA_q 실행");
		return sqltemplate.selectOne("cm_BoardDAO.getReadQnA_q", vo);
	}
	public Cm_QnAVO getReadQnA_a(Cm_QnAVO vo) {
		System.out.println("DAO.getReadQnA_a 실행");
		return sqltemplate.selectOne("cm_BoardDAO.getReadQnA_a", vo);
	}
	
	public void insertQnA_ad(Ad_QnAVO vo) {
		System.out.println("DAO.insertQnA_ad 실행");
		sqltemplate.insert("BoardDAO.insertQnA_ad", vo);
	}
	public void updateQnA_cm(Cm_QnAVO vo) {
		System.out.println("DAO.updateQnA_cm 실행");
		sqltemplate.update("cm_BoardDAO.updateQnA_cm", vo);
	}
	public CustomerVO getReadPhoneNum(CustomerVO vo) {
		System.out.println("DAO.getReadPhoneNum 실행");
		return sqltemplate.selectOne("CustomerVO.getReadPhoneNum", vo);
	}
	
}
