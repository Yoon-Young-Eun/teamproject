package mymaven.spring.web.board.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mymaven.spring.web.board.BoardDTO;
import mymaven.spring.web.board.MemberVO;


@Repository  
public class BoardDAOMybatis{

	   @Autowired
	   private SqlSessionTemplate sqlSessionTemplate;

	   
		public void insertBoard(MemberVO vo) {
		sqlSessionTemplate.insert("BoardDAO.insertBoard", vo);
		}
		public void updateBoard(MemberVO vo) {
		sqlSessionTemplate.update("BoardDAO.updateBoard", vo);
		}
		public void deleteBoard(MemberVO vo) {
		sqlSessionTemplate.delete("BoardDAO.deleteBoard", vo);
		}
		public MemberVO getBoard(MemberVO vo) {
		return (MemberVO) sqlSessionTemplate.selectOne("BoardDAO.getBoard", vo);
		} 
		
		public int getArticleCount(){
			System.out.println(sqlSessionTemplate);
			return sqlSessionTemplate.selectOne("BoardDAO.getArticleCount");
			
		}
		
		public List<MemberVO> getBoardList(MemberVO vo) {
		return sqlSessionTemplate.selectList("BoardDAO.getBoardList", vo);
		}
		
		public List<Map<String, Object>> getArticleList(String searchKeyword, String searchCondition, int startRow, int endRow) {
		
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("startRow", startRow);
			map.put("endRow", endRow);
			map.put("searchCondition", searchCondition);	
			map.put("searchKeyword", searchKeyword);	

		return sqlSessionTemplate.selectList("BoardDAO.getArticleList", map);
		}
	   
}