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
	public OrderVO getReadOrder(OrderVO vo) {
		System.out.println("ReadOrder서비스vo:   " + vo);

		return PayDAO.getReadOrder(vo);
	}

	@Override
	public void updateOrder(OrderVO vo) {
		PayDAO.updateOrder(vo);
	}

	@Override
	public OrderVO getPayNum(OrderVO vo) {
		return PayDAO.getPayNum(vo);
	}

	@Override
	public void deletePayInfo(PayVO vo) {
		PayDAO.deletePayInfo(vo);
	}

	

}
