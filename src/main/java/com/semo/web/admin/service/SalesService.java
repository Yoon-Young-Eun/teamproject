package com.semo.web.admin.service;

import java.util.List;

import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;


public interface SalesService {
	
    public int getArticleCount();
    public List<OrderVO> getStoreSalesList(PagingVO pvo);
    public List<OrderMtVO> getProductSalesList(PagingVO pvo);

}
