package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.NoticeVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ReviewVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	//이벤트
	public EventVO getBoardEvent(EventVO vo) {
		return sql.selectOne("BoardDAO.getEvent",vo);
	}
	
	public List<EventVO> getBoardEventList(){
		System.out.println("DAO.getBoardEventList 실행");
		return sql.selectList("BoardDAO.getBoardEventList");
	}
	
	
	//공지사항
	public NoticeVO getBoard(NoticeVO vo) {
		return sql.selectOne("BoardDAO.getBoard",vo);
	}
	
	public List<NoticeVO> getBoardList(PagingVO pvo) {
		return sql.selectList("BoardDAO.getBoardList",pvo);
	}
	
	public int getBoardCount(PagingVO pvo) {
		return sql.selectOne("BoardDAO.getBoardCount", pvo);
	}
	
	public void insertReview(ReviewVO vo) {
		sql.insert("BoardDAO.insertReview",vo);
	}
	
}
