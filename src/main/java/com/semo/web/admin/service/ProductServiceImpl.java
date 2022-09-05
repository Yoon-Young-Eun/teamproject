package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.ProductDAO;
import com.semo.web.admin.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO ProductDAO;
	
	@Override
	public void insertProduct(ProductVO vo) {
		ProductDAO.insertProduct(vo);
	}

	@Override
	public List<ProductVO> getProductList() {
		return ProductDAO.getProductList();
	}

	@Override
	public ProductVO getReadProduct(ProductVO vo) {
		return ProductDAO.getReadProduct(vo);
	}

	@Override
	public void updateProduct(ProductVO vo) {
		ProductDAO.updateProduct(vo);
	}

	@Override
	public void deleteProduct(ProductVO vo) {
		ProductDAO.deleteProduct(vo);
	}

	

}
