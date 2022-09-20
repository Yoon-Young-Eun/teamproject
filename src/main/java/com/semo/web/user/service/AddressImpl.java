package com.semo.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semo.web.user.dao.AddressDAO;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CustomerVO;

@Service
public class AddressImpl implements AddressService {

	@Autowired
	AddressDAO addressdao;

	@Override
	public void setAddress(AddressListVO vo) {
		addressdao.setAddress(vo);

	}

	@Override
	public void deleteAddressList(AddressListVO vo) {

		addressdao.deleteAddressList(vo);
	}

	@Override
	public void updateAddressList(AddressListVO vo) {
		addressdao.updateAddressList(vo);

	}

	@Override
	public AddressListVO sendAddressList(AddressListVO vo) {

		return addressdao.sendAddressList(vo);
	}

	@Override

	public CustomerVO sendCustomer(CustomerVO vo) {
		

		return addressdao.sendCustomer(vo);
	}

	@Override

	public List<AddressListVO> getAddressList(CustomerVO vo) {
		

		return addressdao.getAddressList(vo);
	}
	
	

	@Override
	public void updateCustomerAddress(AddressListVO vo) {
		addressdao.updateCustomerAddress(vo);
	}

	@Override
	public AddressListVO selectCustomerAddress(AddressListVO vo) {
		return addressdao.selectCustomerAddress(vo);
		
	}

	@Override
	public CustomerVO SearchId(CustomerVO vo) {
		
		return addressdao.SearchId(vo);
	}

	@Override
	public CustomerVO selectPassword(CustomerVO vo) {
		
		return addressdao.selectPassword(vo);
	}



}