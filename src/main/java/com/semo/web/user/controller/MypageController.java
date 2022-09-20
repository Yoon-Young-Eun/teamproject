package com.semo.web.user.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semo.web.admin.vo.Ad_EstimateVO;
import com.semo.web.admin.vo.Estimate_T_VO;
import com.semo.web.admin.vo.StoreVO;
import com.semo.web.user.service.MypageService;
import com.semo.web.user.vo.AddressListVO;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderVO;

@Controller
public class MypageController {
 
	
	@Autowired
	MypageService service;
	
	// MyMain : 최근 주문
	
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String RecentOrder(Model model, CustomerVO customer, OrderVO order) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyMain.jsp");
		System.out.println("Controller > " + customer);
		
		// 요약박스
		int cnt = service.ordercnt(customer);
		int cnt2 = service.couponcnt(customer);
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("cnt2", cnt2);

		// order_no > 내용 불러오기(OrderMtVO)
		OrderMtVO ordermt = service.ordermt(order);
		System.out.println("Controller > OrderDetail > " + ordermt);
		
		// customer_no > 주문 정보 불러오기
		List<OrderVO> orderlist = service.orderlist(customer);
		System.out.println("Controller > orderlist > " + orderlist);
	
		// 화면에 "orderlist" 표시
		model.addAttribute("orderlist", orderlist);
		
		 // order_no > "최근주문-내용" 눌렀을 때 주문 상세로 넘어가기
		 model.addAttribute("ordernum", order.getOrder_no());
		 // store_code > "주문목록-내용" 눌렀을 때 주문 상세로 넘어가기
		 model.addAttribute("store_code", order.getStore_code());
		 // "내용"에 데이터 표시
		 model.addAttribute("ordermt", ordermt);
		
		return "/views-mypage/MyMain.jsp";	
	}
	
	// MyOrderList : 주문 목록
	@RequestMapping(value = "/myorderlist.do", method = RequestMethod.GET)
	public String OrderList(Model model, CustomerVO customer, OrderVO order) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyOrderlist.jsp");
		System.out.println("Controller > " + customer);
		
		// 목록 개수 세기
		int cnt = service.ordercnt(customer);
		model.addAttribute("cnt", cnt);
		
		// "더보기" 또는 "메뉴-주문관리" 눌렀을 때 주문 목록으로 넘어가기
		// customer_no > 주문 정보 불러오기
		List<OrderVO> orderlist = service.orderlist(customer);
		System.out.println("Controller > 주문 정보 불러오기 > " + orderlist);
		
		// order_no > "주문목록-내용" 눌렀을 때 주문 상세로 넘어가기
		model.addAttribute("ordernum", order.getOrder_no());
		// store_code > "주문목록-내용" 눌렀을 때 주문 상세로 넘어가기
		model.addAttribute("store_code", order.getStore_code());
		
		// 화면에 "order" 표시
		model.addAttribute("orderlist", orderlist);
		
		return "/views-mypage/MyOrderlist.jsp";
	}
	
	// MyOrder : 주문 상세
	@RequestMapping(value = "/orderdetail.do", method = RequestMethod.GET)
	public String OrderDetail(Model model, CustomerVO customer, OrderMtVO ordermt, OrderVO order, StoreVO store) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyOrder.jsp");
		System.out.println("Controller > " + order);
		System.out.println("Controller > " + ordermt);
		System.out.println("Controller > " + store);
		
		// "메뉴-주문관리-목록-내용" 눌렀을 때 주문 상세로 넘어가기
		// customer_no > 주문 정보 불러오기(OrderVO)
		List<OrderVO> orderlist = service.orderlist(customer);
		System.out.println("Controller > OrderList > " + orderlist);
		
		// order_no > OrderVO
		OrderVO ordervo = service.ordervo(order);
		model.addAttribute("ordervo", ordervo);
		
		// order_no > 주문 상세 불러오기(OrderMtVO)
		List<OrderMtVO> orderdetail = service.orderdetail(order);
		System.out.println("Controller > OrderDetail > " + orderdetail);
		
		// store_no > 직영점 상세 불러오기 (StoreVO)
		StoreVO storedetail = service.storedetail(order);
		System.out.println("Controller > StoreDetail > " + storedetail);
		
		model.addAttribute("orderdetail", orderdetail);
		model.addAttribute("orderlist", orderlist);
		model.addAttribute("storedetail", storedetail);
		
		return "/views-mypage/MyOrder.jsp";
		
	}
	
	// MyAddresslist : 주소 목록
	@RequestMapping(value = "/myaddresslist.do", method = RequestMethod.GET)
	public String AddressList(Model model, CustomerVO customer, AddressListVO address) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyAddresslist.jsp");
		System.out.println("Controller > customer " + customer);
		
		// customer_no > 주소 목록 불러오기
		List<AddressListVO> addresslist = service.addresslist(customer);
		System.out.println("Controller > addresslist > " + addresslist);	
		
		model.addAttribute("addresslist", addresslist);
		
		// cm_address_no > 주소 상세
		model.addAttribute("addressnum", address.getCm_address_no());
		
		return "/views-mypage/MyAddresslist.jsp";
	}
	
	// MyAddress : 주소 상세
	@RequestMapping(value = "/addressdetail.do", method = RequestMethod.GET)
	public String AddressDetail(Model model, CustomerVO customer, AddressListVO address, OrderVO order) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyAdress.jsp");	
		
		// customer_no > 주소 불러오기
		AddressListVO addressdetail = service.addressdetail(customer);
		System.out.println("Controller > addressdetail > " + addressdetail);
				
		model.addAttribute("addressdetail", addressdetail);
		
		return "/views-mypage/MyAddress.jsp";
	}
	
<<<<<<< HEAD
	
	//견적서
	@RequestMapping(value= "/myestimate.do")
	public String getMyEstimate(EstimateVO evo, Ad_EstimateVO avo, Estimate_ImageVO vo1, Model model) {
		System.out.println("내 견적요청서");
		System.out.println("evo"+evo);
		
		
		List<Estimate_ImageVO> eiv = service.getEstimateImg(vo1);
		EstimateVO myvo = service.getMyEstimate(evo);

		model.addAttribute("estiimg", eiv);
		model.addAttribute("getEstimate", myvo);
		System.out.println("myvo"+myvo);
		
		System.out.println("관리자답변");
		Ad_EstimateVO advo = service.getAd_Estimate(avo);
		System.out.println("답변?"+advo);
		model.addAttribute("getAd_Estimate", advo);
		return "/views-mypage/MyEstimate.jsp";
=======
	@RequestMapping(value = "/mycoupon.do", method = RequestMethod.GET)
	public String Coupon(Model model, CustomerVO customer) {
		
		System.out.println("======================================================================================================");
		System.out.println("go to MyAdress.jsp");
		
		System.out.println("Controller > " + customer);
		
		// 목록 개수 세기
		int cnt2 = service.couponcnt(customer);
		model.addAttribute("cnt2", cnt2);
		
		// customer_no > 쿠폰 목록 불러오기
		List<CouponListVO> couponlist = service.couponlist(customer);
		System.out.println("Controller > couponlist > " + couponlist);
		
		model.addAttribute("couponlist", couponlist);
		
		return "/views-mypage/MyCoupon.jsp";
>>>>>>> main
	}
	
	
	
}
