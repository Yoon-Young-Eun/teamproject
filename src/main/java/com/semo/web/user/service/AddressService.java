package com.semo.web.user.service;

import java.util.List;

import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CustomerVO;

public interface AddressService {

	void setAddress(AddressListVO vo);
<<<<<<< HEAD

	List<AddressListVO> getAddressList(CustomerVO2 vo);

=======
	
	List<AddressListVO> getAddressList(CustomerVO vo);
	
	
	
>>>>>>> main
	void deleteAddressList(AddressListVO vo);

	void updateAddressList(AddressListVO vo);

	AddressListVO sendAddressList(AddressListVO vo);
<<<<<<< HEAD

	CustomerVO2 sendCustomer(CustomerVO2 vo);
=======
	
	void updateCustomerAddress(AddressListVO vo1);
	
	CustomerVO sendCustomer(CustomerVO vo);
>>>>>>> main
	
	void updateCustomerAddress(AddressListVO vo);
	
	AddressListVO selectCustomerAddress(AddressListVO vo);

}