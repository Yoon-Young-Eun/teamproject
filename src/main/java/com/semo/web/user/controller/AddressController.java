package com.semo.web.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.user.service.AddressService;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CustomerVO2;

@Controller
public class AddressController {

	@Autowired
	AddressService addressservice;

	@RequestMapping(value = "/setAddress.do", method = RequestMethod.GET)
	public String setAddress(AddressListVO vo, HttpSession session, Model model) {
		System.out.println(vo);
		System.out.println("setAddress 메서드 실행");
		addressservice.setAddress(vo);
		return "/getAddressList.do";

	}

	@RequestMapping(value = "/getAddressList.do", method = RequestMethod.GET)
	public String getAddressList(AddressListVO avo, Model model, CustomerVO2 vo) {

		System.out.println(vo);
		System.out.println("getAddress 메서드 실행");

		List<AddressListVO> AddressList = addressservice.getAddressList(vo);

		model.addAttribute("AddressList", AddressList);
		model.addAttribute("customer_no", vo.getCustomer_no());
		System.out.println(AddressList);
		return "/pay/payAddressList.jsp";
	}

	@RequestMapping(value = "/getAddressList1.do", method = RequestMethod.GET)
	public String getAddressList1(AddressListVO vo, Model model) {
		System.out.println(vo);
		System.out.println("getAddress1 메서드 실행");
		/* int aa = vo.getCustomer_no(); */
		model.addAttribute("customer_no", vo.getCustomer_no());
		System.out.println(vo.getCustomer_no());
		return "/pay/payAddAddress.jsp";
		/* return "redirect:getAddressList.do?customer_no="+vo.getCustomer_no(); */
	}

	@RequestMapping(value = "/deleteAddressList.do", method = RequestMethod.GET)
	public String deleteAddressList(AddressListVO vo, Model model) {
		System.out.println(vo);
		System.out.println("deleteAddressList 메서드 실행");

		addressservice.deleteAddressList(vo);

		System.out.println(vo);
		return "/getAddressList.do";
	}

	@RequestMapping(value = "/updateAddressList.do", method = RequestMethod.GET)
	public String updateAddressList(AddressListVO vo, Model model) {
		System.out.println(vo);
		System.out.println("updateAddressList 메서드 실행");
		addressservice.updateAddressList(vo);
		return "/getAddressList.do";
	}

	@RequestMapping(value = "/sendAddressList.do", method = RequestMethod.GET)
	public String sendAddressList(AddressListVO vo, Model model) {
		System.out.println("글자" + vo);
		System.out.println("sendAddressList 메서드 실행");
		AddressListVO sendAddressList = addressservice.sendAddressList(vo);
		model.addAttribute("sendAddressList", sendAddressList);
		System.out.println(sendAddressList);
		model.addAttribute("vo", vo);
		return "/pay/payaddressupdate.jsp";
	}

	@RequestMapping(value = "/sendCustomer.do", method = RequestMethod.GET)
	public String sendCustomer(CustomerVO2 vo, Model model) {
		System.out.println(vo);
		System.out.println("sendCustomer 메서드 실행");

		System.out.println("글자" + vo);

		model.addAttribute("sendCustomer", addressservice.sendCustomer(vo));
		System.out.println(addressservice.sendCustomer(vo));
		return "/pay/payAddress.jsp";
	}
	
	@RequestMapping(value="/updateCustomerAddress.do",method = RequestMethod.GET)
	public String updateCustomerAddress(AddressListVO vo,CustomerVO2 vo1,Model model) {
		System.out.println(vo);
		
		vo = addressservice.selectCustomerAddress(vo);
		System.out.println(vo);
		System.out.println("updateCustomerAddress 메서드 실행");
		addressservice.updateCustomerAddress(vo);
		return "/getAddressList.do";
	}

}