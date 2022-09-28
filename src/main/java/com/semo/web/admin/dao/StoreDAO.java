package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.StoreVO;

@Repository
public class StoreDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public void insertStore(StoreVO vo) {
		System.out.println("---> MyBatis로 insertStore() 기능 처리");
		sql.insert("StoreDAO.insertStore", vo);
	}
	
	public List<StoreVO> getStoreList(PagingVO pvo){
		System.out.println("DAO.getStoreList 실행");
		return sql.selectList("StoreDAO.getStoreList", pvo);
	}
	
	public int getArticleCount(PagingVO pvo) {
		return sql.selectOne("StoreDAO.getArticleCount", pvo);
	}
	
	
	public StoreVO getReadStore(StoreVO vo) {
		System.out.println("DAO.getReadStore 실행");
		return sql.selectOne("StoreDAO.getReadStore", vo);
	}
	
	public void updateStore(StoreVO vo) {
		System.out.println("DAO.getUpdateStore 실행");
		sql.update("StoreDAO.updateStore", vo);
	}
	
	public void deleteStore(StoreVO vo) {
		System.out.println("DAO.deleteStore 실행");
		sql.delete("StoreDAO.deleteStore", vo);
	}
	
	public void deleteStore(int no) {
		System.out.println("DAO.deleteStore 실행");
		sql.delete("StoreDAO.deleteStore", no);
	}
}
