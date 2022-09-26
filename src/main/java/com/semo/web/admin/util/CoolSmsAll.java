package com.semo.web.admin.util;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Component;
import net.nurigo.java_sdk.api.Message;
import com.semo.web.admin.vo.MessageVO;
import com.semo.web.user.vo.CustomerVO;

import net.nurigo.java_sdk.exceptions.CoolsmsException;


@Component
public class CoolSmsAll {
	
	public void sendMessage(List<CustomerVO> phoneList, MessageVO content) {
		
	String message= content.getMessage_content();
	System.out.println(phoneList);
    System.out.println("message :"+ message);
    
		  String api_key = "NCSK8KGKIZD54AMU";   //coolsns 가입후 받는 키
		  String api_secret = "Z3E8MTR7D5HA5BFTR0FDJXETBQS6AIVU"; // //coolsns 가입후 받는 키  
		  Message coolsms = new Message(api_key, api_secret);
		  		
		  String phone = "";
		  HashMap<String, String> params = new HashMap<String, String>();
		  for(CustomerVO cvo : phoneList) {
			 phone = cvo.getCustomer_phone();
			params.put("to", phone);
			System.out.println("phoen:"+phone);
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
	}
	
}
