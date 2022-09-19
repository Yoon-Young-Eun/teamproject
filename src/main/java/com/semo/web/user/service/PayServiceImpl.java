package com.semo.web.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.user.dao.PayDAO;
import com.semo.web.user.vo.OrderVO;
import com.semo.web.user.vo.PayVO;

@Service
public class PayServiceImpl implements PayService {
	
	@Autowired
	PayDAO PayDAO;
	
	@Override
	public void insertPayInfo(PayVO vo) {
		PayDAO.insertPayInfo(vo);
	}

	@Override
	public PayVO getReadPay(PayVO vo) {
		return PayDAO.getReadPay(vo);
	}

	@Override
	public OrderVO getRefundNum(OrderVO vo) {
		return PayDAO.getRefundNum(vo);
	}

	@Override
	public void updateOrder(OrderVO vo) {
		PayDAO.updateOrder(vo);
	}

	

}
