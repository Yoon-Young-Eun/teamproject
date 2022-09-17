package com.semo.web.user.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.semo.web.admin.vo.ProductVO;
import com.semo.web.admin.vo.TermsVO;
import com.semo.web.amazon.s3.AwsS3;
import com.semo.web.user.service.OrderService;
import com.semo.web.user.vo.CouponListVO;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.DataSendVO;
import com.semo.web.user.vo.EstimateVO;
import com.semo.web.user.vo.Estimate_ImageVO;
import com.semo.web.user.vo.OrderMtArrayVO;
import com.semo.web.user.vo.OrderMtVO;
import com.semo.web.user.vo.OrderProductVO;
import com.semo.web.user.vo.OrderVO;

@Controller
public class OrderController {

	@Autowired
	OrderService orderservice;

	@RequestMapping(value = "/OrderAddress.do", method = RequestMethod.GET)
	public String OrderAddress(CustomerVO vo, OrderVO vo1, Model model) {
		System.out.println(vo);
		System.out.println(vo1);

		model.addAttribute("OrderAddress", vo);
		model.addAttribute("gatepswd", vo1);
		return "/pay/PayPickupDate.jsp";
	}

	@RequestMapping(value = "/OrderAddressTime.do", method = RequestMethod.GET)

	public String OrderAddressTime(OrderVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("OrderData", vo);
		System.out.println(vo);
		return "/pay/payWashType.jsp";

	}

	@RequestMapping(value ="/OrderType.do", method = RequestMethod.GET)
	// 일반세탁 주문페이지로
	public String OrderType(OrderVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("OrderData", vo);
		System.out.println(vo);

		orderservice.getProductBottom();
		orderservice.getProductOuter();
		orderservice.getProductETC();
		orderservice.getProductShoes();
		orderservice.getProductBedding();

		List<ProductVO> top = orderservice.getProductTop();
		List<ProductVO> bottom = orderservice.getProductBottom();
		List<ProductVO> outer = orderservice.getProductOuter();
		List<ProductVO> etc = orderservice.getProductETC();
		List<ProductVO> shoes = orderservice.getProductShoes();
		List<ProductVO> bedding = orderservice.getProductBedding();

		model.addAttribute("top", top);
		System.out.println(top);
		model.addAttribute("bottom", bottom);
		model.addAttribute("outer", outer);
		model.addAttribute("etc", etc);
		model.addAttribute("shoes", shoes);
		model.addAttribute("bedding", bedding);

		return "/pay/payOrderGeneral.jsp";

	}

	@RequestMapping(value = "/OrderType1.do", method = RequestMethod.GET)
	// 특수세탁 주문페이지로
	public String OrderType1(OrderVO vo, Model model ) {
		System.out.println(vo);
		model.addAttribute("OrderData", vo);
		System.out.println("글자" + vo);
		
		return "/pay/payOrderSpecial.jsp";

	}

	@RequestMapping(value="/OrderGeneral.do",method=RequestMethod.GET)
	//일반세탁 주문하기
	public String OrderGeneral(OrderVO vo,Model model,DataSendVO vo2,OrderMtArrayVO vo4) {
		
	
		List<OrderProductVO> vo6 = new ArrayList<OrderProductVO>();
		for(int i=0;i<vo4.getOrder_mtArray_sumPrice().size();i++) {
			if(vo4.getOrder_mtArray_count().get(i) != 0) {
				
			OrderProductVO vo5  =new OrderProductVO();
			vo5.setProduct_Array_code(vo4.getProduct_Array_code().get(i));
			vo5.setOrder_mtArray_category1(vo4.getOrder_mtArray_category1().get(i));
			vo5.setOrder_mtArray_category2(vo4.getOrder_mtArray_category2().get(i));
			vo5.setOrder_mtArray_count(vo4.getOrder_mtArray_count().get(i));
			vo5.setOrder_mtArray_price(vo4.getOrder_mtArray_price().get(i));
			vo5.setOrder_mtArray_product(vo4.getOrder_mtArray_product().get(i));
			vo5.setOrder_mtArray_sumPrice(vo4.getOrder_mtArray_sumPrice().get(i));
			
			vo6.add(vo5);
		
			System.out.println("vo6"+i+"번째"+vo6);
			}
		}
		
		System.out.println("나나나ㅏ"+vo6);
		model.addAttribute("vvv",vo6);
	
		model.addAttribute("checkbox",vo2);
		model.addAttribute("OrderData",vo);
		System.out.println(vo);
		model.addAttribute("arr",vo4);
		model.addAttribute("OrderProduct",vo6);
		
		
		if(vo.getOrder_price() >= 20000) {
			vo.setOrder_delivery_price(0);
		}else {
			vo.setOrder_delivery_price(3500);
		}
		int price = vo.getOrder_price() + vo.getOrder_delivery_price();
		model.addAttribute("price",price);
		System.out.println(vo.getOrder_delivery_price());
		
		
		
		List<TermsVO> terms = orderservice.selectTerms();
		model.addAttribute("terms",terms);
		System.out.println(terms);
		int price1 = vo.getOrder_price();
		model.addAttribute("price1",price1);
		
	
		return "/pay/payOrderGeneralCheck.jsp";
	}
	
	/*
	 * @RequestMapping(value="/OrderPay.do",method=RequestMethod.GET) public String
	 * OrderPay(OrderVO vo,OrderMtVO vo1) { System.out.println(vo);
	 * System.out.println(vo1);
	 * 
	 * return "/pay/payGeneralComplete.jsp"; }
	 */
	
	@RequestMapping(value="/OrderCoupon.do" ,method=RequestMethod.GET)
	public String OrderCoupon(OrderVO vo,Model model,CouponListVO cvo) {
		System.out.println("오더"+vo);
		System.out.println("쿠폰함"+cvo);
		model.addAttribute("OrderData",vo);
		System.out.println("랄랄라"+vo);
		List<CouponListVO> CouponList = orderservice.OrderCoupon(vo);
		model.addAttribute("couponList",CouponList);
		System.out.println(CouponList);
		return "/pay/payCouponList.jsp";
	}
	@RequestMapping(value="/OrderInsert.do",method=RequestMethod.GET)
	public String  OrderInsert(OrderVO vo,OrderMtVO vo3 ,OrderMtArrayVO vo2) {
		System.out.println("오더"+ vo);
		System.out.println("오더MT"+vo3);
		orderservice.OrderInsert(vo);
		int num = orderservice.OrderSelect(vo);
		
	

		for(int i=0;i<vo2.getOrder_mtArray_count().size();i++) {
			
			
				
			OrderMtVO vo1  =new OrderMtVO();
			vo1.setOrder_no(num);
			vo1.setCustomer_no(vo.getCustomer_no());
			System.out.println(vo1.getOrder_mt_no());
			
			vo1.setProduct_code(vo2.getProduct_Array_code().get(i));
			vo1.setOrder_mt_category1(vo2.getOrder_mtArray_category1().get(i));
			vo1.setOrder_mt_category2(vo2.getOrder_mtArray_category2().get(i));
			vo1.setOrder_mt_count(vo2.getOrder_mtArray_count().get(i));
			vo1.setOrder_mt_price(vo2.getOrder_mtArray_price().get(i));
			vo1.setOrder_mt_product(vo2.getOrder_mtArray_product().get(i));
			vo1.setCustomer_name(vo2.getCustomer_Array_name().get(i));
			
			orderservice.OrderInsert1(vo1);
			

		
			System.out.println("vo1"+i+"번째"+vo1);
			
		}
		
		System.out.println(vo);

		return "/pay/payGeneralComplete.jsp";
	}
	

	@RequestMapping(value="/Orderspecial.do")
	public String Orderspecial(@RequestParam(name="file") MultipartFile[] file,Model model, EstimateVO vo,OrderVO vo2,Estimate_ImageVO vo1) throws IOException,SQLException{
		
		AwsS3 awss3 = AwsS3.getInstance();
		
		orderservice.Orderspecial(vo);
		System.out.println(vo);
		model.addAttribute("OrderEstimate",vo);
		model.addAttribute("OrderData",vo2);
		int num = vo.getCustomer_no();
		System.out.println(num);
		
		int num1 = orderservice.selectImage(vo);
		System.out.println(num1);
		
		List<Estimate_ImageVO> estimate_image = new ArrayList<Estimate_ImageVO>();
		try {
			
			for(MultipartFile multipartFile : file) {
				
				Estimate_ImageVO vo3 = new Estimate_ImageVO();
				InputStream is = multipartFile.getInputStream();
				System.out.println(is);
				String key = multipartFile.getOriginalFilename();
				String contentType=multipartFile.getContentType();
				long contentLength = multipartFile.getSize();
				
				String bucket = "semoproject/estimate";
				
				awss3.upload(is,key,contentType,contentLength,bucket);
				String estimate_filepath = "https://semoproject.s3.ap-northeast-2.amazonaws.com/estimate/"+key;
				
				vo3.setEstimate_cm_no(num1);
				vo3.setCustomer_no(num);
				vo3.setEstimate_filepath(estimate_filepath);
				orderservice.insertImage(vo3);
				estimate_image.add(vo3);
				System.out.println(vo3);
				
				
		}
			System.out.println(estimate_image);
			model.addAttribute("estimate_image",estimate_image);
			System.out.println("dd"+estimate_image);
		}catch(Exception e){
			e.printStackTrace();
			throw new IOException("파일 업로드 중 에러가 발생했습니다.");
		
		}
		
		
	
		
		return "/pay/payOrderSpecialCheck.jsp";
	}
	
	

}
