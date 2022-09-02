package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.NoticeVO;

@Repository
public class BoardDAO {

	public BoardDAO() {

	}

	@Autowired
	SqlSessionTemplate sqltemplate;


	public void insertBoard(NoticeVO vo) {
		sqltemplate.insert("BoardDAO.insertBoard",vo);

	}

	public void updateBoard(NoticeVO vo) {
		sqltemplate.update("BoardDAO.updateBoard",vo);

	}

	public void deleteBoard(NoticeVO vo) {
		sqltemplate.delete("BoardDAO.deleteBoard",vo);

	}


	public NoticeVO getBoard(NoticeVO vo) {
		return sqltemplate.selectOne("BoardDAO.getBoard",vo);
	}

	public List<NoticeVO> getBoardList(NoticeVO vo) {
		return sqltemplate.selectList("BoardDAO.getBoardList",vo);
	}


}
