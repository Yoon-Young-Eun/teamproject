package com.semo.web.user.service;

import java.util.List;

import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CustomerVO;

public interface AddressService {

	void setAddress(AddressListVO vo);

	List<AddressListVO> getAddressList(CustomerVO vo);

	void deleteAddressList(AddressListVO vo);

	void updateAddressList(AddressListVO vo);

	AddressListVO sendAddressList(AddressListVO vo);

	CustomerVO sendCustomer(CustomerVO vo);

	void updateCustomerAddress(AddressListVO vo);

	AddressListVO selectCustomerAddress(AddressListVO vo);
	
	CustomerVO SearchId(CustomerVO vo);

	CustomerVO selectPassword(CustomerVO vo);
	
}