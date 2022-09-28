package com.semo.web.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.admin.vo.PagingVO;
import com.semo.web.admin.vo.ProductVO;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public void insertProduct(ProductVO vo) {
		System.out.println("---> MyBatis로 insertProduct() 기능 처리");
		sql.insert("ProductDAO.insertProduct", vo);
	}
	
	public List<ProductVO> getProductList(PagingVO pvo){
		System.out.println("DAO.getProductList 실행");
		return sql.selectList("ProductDAO.getProductList", pvo);
	}
	
	public int getArticleCount(PagingVO pvo) {
		return sql.selectOne("ProductDAO.getArticleCount", pvo);
	}
	
	public ProductVO getReadProduct(ProductVO vo) {
		System.out.println("DAO.getReadProduct 실행");
		return sql.selectOne("ProductDAO.getReadProduct", vo);
	}
	
	public void updateProduct(ProductVO vo) {
		System.out.println("DAO.getUpdateProduct 실행");
		sql.update("ProductDAO.updateProduct", vo);
	}
	
	public void deleteProduct(ProductVO vo) {
		System.out.println("DAO.deleteProduct 실행");
		sql.delete("ProductDAO.deleteProduct", vo);
	}
	
	public void deleteProduct(int no) {
		System.out.println("DAO.deleteProduct 실행");
		sql.delete("ProductDAO.deleteProduct", no);
	}
}
