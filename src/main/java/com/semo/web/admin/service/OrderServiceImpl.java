package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.OrderDAO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.PagingVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;



@Service
public class OrderServiceImpl implements OrderService {

	
	@Autowired
	OrderDAO orderDao;
	
	@Override
	public List<OrderMtVO> getUserOrderList(PagingVO pvo) {
		return orderDao.getUserOrderList(pvo);
	}
	
	@Override
	public int getArticleCount() {
		return orderDao.getArticleCount();
	}

	@Override
	public List<OrderVO> getAdminOrderList(PagingVO pvo) {
		return orderDao.getAdminOrderList(pvo);
	}

	@Override
	public int getMemberArticleCount(PagingVO pvo) {
		return orderDao.getMemberArticleCount(pvo);
	}
	
}
