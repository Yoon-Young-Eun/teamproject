package com.semo.web.user.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CustomerVO;

@Repository
public class AddressDAO {

	@Autowired
	SqlSessionTemplate sqltemplate;

	public void setAddress(AddressListVO vo) {
		System.out.println("setAddressDAO 메서드 실행");
		sqltemplate.insert("AddressDAO.setAddress", vo);
	}
<<<<<<< HEAD

	public List<AddressListVO> getAddressList(CustomerVO2 vo) {
=======
	
	public List<AddressListVO> getAddressList(CustomerVO vo) {
>>>>>>> main
		System.out.println("getAddressDAO 메서드 실행");
		return sqltemplate.selectList("AddressDAO.getAddressList", vo);

	}

	public void deleteAddressList(AddressListVO vo) {
		System.out.println("deleteAddressListDAO 메서드 실행");
		sqltemplate.delete("AddressDAO.deleteAddressList", vo);
	}

	public void updateAddressList(AddressListVO vo) {
		System.out.println("updateAddressListDAO 메서드 실행");
		sqltemplate.update("AddressDAO.updateAddressList", vo);
	}

	public AddressListVO sendAddressList(AddressListVO vo) {
		System.out.println("sendAddressDAO 메서드 실행");
		return sqltemplate.selectOne("AddressDAO.sendAddressList", vo);
	}
<<<<<<< HEAD

	public CustomerVO2 sendCustomer(CustomerVO2 vo) {
=======
	public CustomerVO sendCustomer(CustomerVO vo) {
>>>>>>> main
		System.out.println("sendCustomerDAO 메서드 실행");
		return sqltemplate.selectOne("AddressDAO.sendCustomer", vo);
	}
	
	public AddressListVO selectCustomerAddress(AddressListVO vo) {
		System.out.println("selectCustomerAddressDAO 메서드 실행");
		return sqltemplate.selectOne("AddressDAO.selectCustomerAddress",vo);
	}

	public void updateCustomerAddress(AddressListVO vo) {
		System.out.println("updateCustomerAddressDAO 메서드 실행");
		sqltemplate.update("AddressDAO.updateCustomerAddress", vo);
	}
}