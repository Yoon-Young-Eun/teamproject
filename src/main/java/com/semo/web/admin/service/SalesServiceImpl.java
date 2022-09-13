package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.SalesDAO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Service
public class SalesServiceImpl implements SalesService {

	@Autowired
	SalesDAO salesDao;
	
	@Override
	public int getArticleCount() {
		return salesDao.getArticleCount();
	}

	@Override
	public List<OrderVO> getStoreSalesList(PagingVO pvo) {
		return salesDao.getStoreSalesList(pvo);
	}

	@Override
	public List<OrderMtVO> getProductSalesList(PagingVO pvo) {
		return salesDao.getProductSalesList(pvo);
	}

	
}
