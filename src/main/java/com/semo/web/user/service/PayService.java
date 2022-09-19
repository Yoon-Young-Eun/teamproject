package com.semo.web.user.service;

import com.semo.web.user.vo.OrderVO;
import com.semo.web.user.vo.PayVO;

public interface PayService {
	public void insertPayInfo(PayVO vo);
	public PayVO getReadPay(PayVO vo);
	public OrderVO getRefundNum(OrderVO vo);
	public void updateOrder(OrderVO vo);
}
