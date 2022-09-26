package com.semo.web.admin.util;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.semo.web.admin.service.Ad_OrderService;
import com.semo.web.admin.service.MemberService;
import com.semo.web.user.vo.CustomerVO;
import com.semo.web.user.vo.OrderVO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


@Component
public class CoolSms {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	Ad_OrderService orderserivce;
	
	public void sendMessage(String phone, String message) {

		  String api_key = "NCSK8KGKIZD54AMU";   //coolsns 가입후 받는 키
		  String api_secret = "Z3E8MTR7D5HA5BFTR0FDJXETBQS6AIVU"; // //coolsns 가입후 받는 키  
		  Message coolsms = new Message(api_key, api_secret);
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", phone);	 // 문자를 보낼 전화번호를 배열로 받음

		    params.put("from", "01031721622");	
		    params.put("type", "LMS");
		    params.put("text", message);
		    System.out.println(message);
		    params.put("app_version", "test app 1.2"); 
		    // application name and version

		    try {
		      JSONObject obj = (JSONObject) coolsms.send(params);
		      System.out.println(obj.toString());
		    } catch (CoolsmsException e) {
		      System.out.println(e.getMessage());
		      System.out.println(e.getCode());
		    }	
	}
	
	
	//배열 형태로 Check Box에 선택된 전화번호만 보내는 메서드
	public void sendMessage(int [] tdArr, String message) {

		  String api_key = "NCSK8KGKIZD54AMU";   //coolsns 가입후 받는 키
		  String api_secret = "Z3E8MTR7D5HA5BFTR0FDJXETBQS6AIVU"; // //coolsns 가입후 받는 키  
		  Message coolsms = new Message(api_key, api_secret);
		    HashMap<String, String> params = new HashMap<String, String>();
		    
		    int no = 0; 
		    String phone = "";
		    CustomerVO vo2 = new CustomerVO();
		    CustomerVO vo3 = new CustomerVO();
		    OrderVO vo = new OrderVO();
		    OrderVO vo1 = new OrderVO();
	
		    for(int i=0; i<tdArr.length; i++) {
		    	
		    	no = tdArr[i];
		    	System.out.println(no); //48
		    	vo.setOrder_no(no);
		    	vo1 = orderserivce.getReadOrderInfo(vo);
		    	System.out.println(vo1);
		    	System.out.println(vo1.getCustomer_no());
		    	vo2.setCustomer_no(vo1.getCustomer_no());
		        vo3= memberService.getRead(vo2); 
		        System.out.println(vo3);
		        System.out.println(vo3.getCustomer_sms_permit());
		    if(vo3.getCustomer_sms_permit()==1) {
		    	phone =  vo3.getCustomer_phone();
		    	System.out.println(phone);
		    
		    
		    }
		    
		    	
		    params.put("to", phone);	 // 문자를 보낼 전화번호를 배열로 받음
		   
		    
		    params.put("from", "01031721622");	
		    params.put("type", "SMS");
		    params.put("text", message);
		    System.out.println(message);
		    params.put("app_version", "test app 1.2"); 
		    // application name and version

		    try {
		      JSONObject obj = (JSONObject) coolsms.send(params);
		      System.out.println(obj.toString());
		    } catch (CoolsmsException e) {
		      System.out.println(e.getMessage());
		      System.out.println(e.getCode());
		    }	
		    
		    }
	}
	
}
