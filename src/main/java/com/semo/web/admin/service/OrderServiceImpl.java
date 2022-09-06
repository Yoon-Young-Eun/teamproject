package com.semo.web.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.admin.dao.OrderDAO;
import com.semo.web.admin.vo.CmOrderVO;
import com.semo.web.admin.vo.CustomerVO;
import com.semo.web.admin.vo.PagingVO;



@Service
public class OrderServiceImpl implements OrderService {

	
	@Autowired
	OrderDAO orderDao;
	
	@Override
	public List<CmOrderVO> getUserOrderList(PagingVO pvo) {
		return orderDao.getUserOrderList(pvo);
	}
	
	@Override
	public int getArticleCount(PagingVO pvo) {
		return orderDao.getArticleCount(pvo);
	}
	
}
