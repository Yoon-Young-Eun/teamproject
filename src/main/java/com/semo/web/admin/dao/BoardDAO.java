package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.EventVO;
import com.semo.web.admin.vo.NoticeVO;

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

	public List<NoticeVO> getBoardList(NoticeVO vo) {
		return sqltemplate.selectList("BoardDAO.getBoardList",vo);
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

	public List<EventVO> getEventList(EventVO vo) {
		return sqltemplate.selectList("BoardDAO.getEventList",vo);
	}
}
