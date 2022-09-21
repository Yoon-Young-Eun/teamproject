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
	public int getStoreArticleCount(PagingVO pvo) {
		return salesDao.getStoreArticleCount(pvo);
	}

	@Override
	public List<OrderVO> getStoreSalesList(PagingVO pvo) {
		return salesDao.getStoreSalesList(pvo);
	}

	@Override
	public List<OrderMtVO> getProductSalesList(PagingVO pvo) {
		return salesDao.getProductSalesList(pvo);
	}

	@Override
	public int getProductArticleCount(PagingVO pvo) {
		return salesDao.getProductArticleCount(pvo);
	}

	@Override
	public List<OrderMtVO> getDoughnutChart(PagingVO pvo) {
		return salesDao.getDoughnutChart(pvo);
	}

	@Override
	public List<OrderVO> getBarChart(PagingVO pvo) {
		return salesDao.getBarChart(pvo);
	}

	@Override
	public List<OrderMtVO> getMainAreaChart(PagingVO pvo) {
		return salesDao.getMainAreaChart(pvo);
	}

	@Override
	public List<OrderVO> getMainBarChart(PagingVO pvo) {
		return salesDao.getMainBarChart(pvo);
	}
	
	@Override
	public List<OrderVO> getSaleStoreSearchTitle2() {
		return salesDao.getSaleStoreSearchTitle2();
	}

	@Override
	public List<OrderVO> getSaleStoreSearchTitle3() {
		return salesDao.getSaleStoreSearchTitle3();
	}


	
}
