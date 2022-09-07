package com.semo.web.user.service;

import java.util.List;

import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CustomerVO2;

public interface AddressService {

	void setAddress(AddressListVO vo);

	List<AddressListVO> getAddressList(CustomerVO2 vo);

	void deleteAddressList(AddressListVO vo);

	void updateAddressList(AddressListVO vo);

	AddressListVO sendAddressList(AddressListVO vo);

	CustomerVO2 sendCustomer(CustomerVO2 vo);
	
	void updateCustomerAddress(AddressListVO vo);
	
	AddressListVO selectCustomerAddress(AddressListVO vo);

}