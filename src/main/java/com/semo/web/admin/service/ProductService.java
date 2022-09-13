package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.ProductVO;

public interface ProductService {
	
	public void insertProduct(ProductVO vo);
	public List<ProductVO> getProductList();
	public ProductVO getReadProduct(ProductVO vo);
	public void updateProduct(ProductVO vo);
	public void deleteProduct(ProductVO vo);
	public void deleteProduct(int no);
}
