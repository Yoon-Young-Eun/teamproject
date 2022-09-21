package com.semo.web.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semo.web.user.service.AddressService;
import com.semo.web.user.service.CoolSmsPassword;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CustomerVO;


@Controller
public class AddressController {

	@Autowired
	AddressService addressservice;

	@Autowired
	CoolSmsPassword coolsmspassword;
	
	
	
	@RequestMapping(value = "/setAddress.do", method = RequestMethod.GET)
	public String setAddress(AddressListVO vo, HttpSession session, Model model) {
		System.out.println(vo);
		System.out.println("setAddress 메서드 실행");
		addressservice.setAddress(vo);
		return "/getAddressList.do";

	}



	
	@RequestMapping(value="/getAddressList.do" ,method = RequestMethod.GET)
	public String getAddressList(AddressListVO avo, Model model, CustomerVO vo) {
		

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
	
	/*
	 * @RequestMapping(value="/updateCustomerAddress.do",method=RequestMethod.GET)
	 * public String updateCustomerAddress(AddressListVO vo1, Model model) {
	 * 
	 * System.out.println(vo1); System.out.println("updateCustomerAddress메서드 실행");
	 * addressservice.updateCustomerAddress(vo1); return "/pay/payAddress.jsp"; }
	 */
	
	@RequestMapping(value="/sendCustomer.do", method=RequestMethod.GET)
	public String sendCustomer(CustomerVO vo,Model model) {

		System.out.println(vo);
		System.out.println("sendCustomer 메서드 실행");

		System.out.println("글자" + vo);

		model.addAttribute("sendCustomer", addressservice.sendCustomer(vo));
		System.out.println(addressservice.sendCustomer(vo));
		return "/pay/payAddress.jsp";
	}
	
	@RequestMapping(value="/updateCustomerAddress.do",method = RequestMethod.GET)
	public String updateCustomerAddress(AddressListVO vo,CustomerVO vo1,Model model) {
		System.out.println(vo);
		
		vo = addressservice.selectCustomerAddress(vo);
		System.out.println(vo);
		System.out.println("updateCustomerAddress 메서드 실행");
		addressservice.updateCustomerAddress(vo);
		return "/getAddressList.do";
	}

	
	//아이디찾기
	@RequestMapping(value="/SearchId.do",method=RequestMethod.GET)
	public String SearchId(CustomerVO vo,Model model) {
		System.out.println("1차" + vo);
		addressservice.SearchId(vo);
		model.addAttribute("SearchId",addressservice.SearchId(vo));
		System.out.println(addressservice.SearchId(vo));
		String a = vo.getCustomer_name();
		System.out.println(a);
		
		CustomerVO vo2 = addressservice.SearchId(vo);
		
		
		if(vo2==null) {
			return "/views/falseId.jsp";
		}
		
		return "/views/viewId.jsp";
	}

	/*
	 * @RequestMapping("/message.do") public String sendMessage(String phone, String
	 * name) {
	 * 
	 * coolsms.sendMessage(phone, name);
	 * 
	 * 
	 * return "Asdasda";
	 * 
	 * }
	 */
	 //비밀번호찾기 인증번호 메세지 보내기
		@RequestMapping(value="/message.do")
		@ResponseBody
		public String sendSMS(@RequestParam(name="customer_phone", required=false) String userPhoneNumber,@RequestParam(name="customer_id") String customer_id, CustomerVO vo) {
			System.out.println("00000");
			System.out.println("고객정보"+vo);
			CustomerVO vo1 = addressservice.selectPassword(vo);
			System.out.println(vo1);
			int randomNumber = (int)((Math.random()*(9999-1000+1))+1000);
			if(vo1 != null) {
				 //난수생성
				System.out.println("난수생성완료");
				coolsmspassword.sendMessage(userPhoneNumber,randomNumber);
					System.out.println("1111");
			}else {
				System.out.println("정보 불일치");
			}
			
			
			return Integer.toString(randomNumber);
			
		//마이페이지 사이드바(내주소관리) -> 내 주소관리 	
		}@RequestMapping(value="/myAddress.do", method=RequestMethod.GET)
		public String myAddress(CustomerVO vo,Model model) {
			
			System.out.println(vo);
			System.out.println("sendCustomer 메서드 실행");

			System.out.println("글자" + vo);

			model.addAttribute("sendCustomer", addressservice.sendCustomer(vo));
			System.out.println(addressservice.sendCustomer(vo));
			return "/views/myAddress.jsp";
		}
		
		
		
		
		//마이페이지 내주소 관리 -> 주소록 띄우기
		@RequestMapping(value="/getmyAddressList.do" ,method = RequestMethod.GET)
		public String getmyAddressList(AddressListVO avo, Model model, CustomerVO vo, HttpSession session) {
			
			System.out.println(vo);
			System.out.println("getAddress 메서드 실행");

			List<AddressListVO> AddressList = addressservice.getAddressList(vo);

			model.addAttribute("AddressList", AddressList);
			model.addAttribute("customer_no", vo.getCustomer_no());
			System.out.println(AddressList);

			//로그인 유지상태 세션으로 확인(실패시, 로그인화면으로)
			session.getAttribute("id");
			vo.setCustomer_id((String)session.getAttribute("id"));
			if(vo.getCustomer_id() != null) {
				System.out.println("로그인 성공");
				return "/views/myAddressList.jsp";
			}else {
				System.out.println("로그인 실패");
				return"/views/login.jsp";
			}
		}
		
		
		//기존주소지동륵 -> Customer table 정보 업데이트
		@RequestMapping(value="/updatemyAddress.do",method = RequestMethod.GET)
		public String updatemyAddress(AddressListVO vo,CustomerVO vo1,Model model) {
			System.out.println(vo);
			
			vo = addressservice.selectCustomerAddress(vo);
			System.out.println(vo);
			System.out.println("updateCustomerAddress 메서드 실행");
			addressservice.updateCustomerAddress(vo);
			return "/getmyAddressList.do";
		}
		//주소록에 등록된 주소 수정페이지로 이동
		@RequestMapping(value = "/sendmyAddressList.do", method = RequestMethod.GET)
		public String sendmyAddressList(AddressListVO vo, Model model) {
			System.out.println("글자" + vo);
			System.out.println("sendAddressList 메서드 실행");
			AddressListVO sendAddressList = addressservice.sendAddressList(vo);
			model.addAttribute("sendAddressList", sendAddressList);
			System.out.println(sendAddressList);
			model.addAttribute("vo", vo);
			return "/views/myAddressUpdate.jsp";
		}
		//수정완료시 주소록리스트 띄우기
		@RequestMapping(value = "/updatemyAddressList.do", method = RequestMethod.GET)
		public String updatemyAddressList(AddressListVO vo, Model model) {
			System.out.println(vo);
			System.out.println("updateAddressList 메서드 실행");
			addressservice.updateAddressList(vo);
			return "/getmyAddressList.do";
		}
		
		//등록된 주소지 삭제
		@RequestMapping(value = "/deletemyAddressList.do", method = RequestMethod.GET)
		public String deletemyAddressList(AddressListVO vo, Model model) {
			System.out.println(vo);
			System.out.println("deleteAddressList 메서드 실행");

			addressservice.deleteAddressList(vo);

			System.out.println(vo);
			return "/getmyAddressList.do";
		}
		//@주소지 추가
		@RequestMapping(value = "/setmyAddress.do", method = RequestMethod.GET)
		public String setmyAddress(AddressListVO vo, HttpSession session, Model model) {
			System.out.println(vo);
			System.out.println("setAddress 메서드 실행");
			addressservice.setAddress(vo);
			return "/getmyAddressList.do";

		}
		//배송지추가 입력창으로 이동
		@RequestMapping(value = "/getmyAddressList1.do", method = RequestMethod.GET)
		public String getmyAddressList1(AddressListVO vo, Model model) {
			System.out.println(vo);
			System.out.println("getAddress1 메서드 실행");
			/* int aa = vo.getCustomer_no(); */
			model.addAttribute("customer_no", vo.getCustomer_no());
			System.out.println(vo.getCustomer_no());
			return "/views/myAddressSet.jsp";
			/* return "redirect:getAddressList.do?customer_no="+vo.getCustomer_no(); */
		}
}