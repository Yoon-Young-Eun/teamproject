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
import mymaven.spring.web.board.MessageVO;


@Repository  
public class BoardDAOMybatis{
	// --방법1. spring-mybatis연동방법 ----------
	// public class BoardDAOMybatis extends SqlSessionDaoSupport{ 

//		SqlSessionDaoSupport 클래스를 상속한 후에 가장 먼저 한 작업이 setSqlSessionFactory() 메서드를 재정의 한 것이다.
//		재정의한 setSqlSessionFactory()메서드 위에 @Autowired를 붙였는데 이렇게 하면 스프링 컨테이너가
//		setSqlSessionFactory() 메서드를 자동으로 호출한다. 
//		- 이때 스프링 설정파일에 <bean> 등록된 SqlSessionFactoryBean 객체를 인자로 받아 부모인 
//		 SqlSessionDaoSupport에 setSqlSessionFactory() 메서드로 실행해 준다. 
//		- 위와 같이 작업을 해야 SqlSessionDaoSupport 클래스로부터 상속된 getSqlSession() 메서드를 호출하여 SqlSession 객체를 리턴받을 수 있다
//			@Autowired
//			public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
//				super.setSqlSessionFactory(sqlSessionFactory);
//				}
		
		/* 방법 2. SqlSessionTemplate 클래스를 이용한 mybatis 설정  */ 
	   @Autowired
	   private SqlSessionTemplate sqlSessionTemplate;

	   
		public void insertBoard(MemberVO vo) {
			System.out.println("---> MyBatis로 insertBoard() 기능 처리");
		sqlSessionTemplate.insert("BoardDAO.insertBoard", vo);
		
		}
		public void updateBoard(MemberVO vo) {
			System.out.println("---> MyBatis로 updateBoard() 기능 처리");
		sqlSessionTemplate.update("BoardDAO.updateBoard", vo);
		}
		public void deleteBoard(MemberVO vo) {
			System.out.println("---> MyBatis로 deleteBoard() 기능 처리");
		sqlSessionTemplate.delete("BoardDAO.deleteBoard", vo);
		}
		public MemberVO getBoard(MemberVO vo) {
			System.out.println("---> MyBatis로 getBoard() 기능 처리");
		return (MemberVO) sqlSessionTemplate.selectOne("BoardDAO.getBoard", vo);
		} 
		
		public int getArticleCount(){
			System.out.println(sqlSessionTemplate);
			return sqlSessionTemplate.selectOne("BoardDAO.getArticleCount");
		}
		
	    //동적 sql적용
		public List<MemberVO> getBoardList(MemberVO vo) {
			System.out.println("---> MyBatis로 getBoardList() 기능 처리");
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
		
		//메세지
		public List<MessageVO> getMessageList(MessageVO vo){
			System.out.println("---> MyBatis로 getMessageList() 기능 처리");
		return sqlSessionTemplate.selectList("BoardDAO.getMessageList", vo);
			
		}

		
		
		
	   
}