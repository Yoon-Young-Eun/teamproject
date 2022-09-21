package com.semo.web.user.service;

import com.semo.web.user.vo.OrderVO;
import com.semo.web.user.vo.PayVO;

public interface PayService {
	public void insertPayInfo(PayVO vo);
	public OrderVO getReadOrder(OrderVO vo);
	public OrderVO getPayNum(OrderVO vo);
	public void updateOrder(OrderVO vo);
	public void deletePayInfo(PayVO vo);
}
