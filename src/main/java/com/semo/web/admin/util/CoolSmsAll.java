package com.semo.web.admin.util;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Component;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


@Component
public class CoolSmsAll {
	
	public void sendMessage(String [] tdArr, String message) {
		

	System.out.println(tdArr);
    System.out.println("message :"+ message);
	if( tdArr != null && message != null ) {
		String [] sns = tdArr; 
		  String api_key = "NCSK8KGKIZD54AMU";   //coolsns 가입후 받는 키
		  String api_secret = "Z3E8MTR7D5HA5BFTR0FDJXETBQS6AIVU"; // //coolsns 가입후 받는 키  
		  Message coolsms = new Message(api_key, api_secret);
		  	
		    HashMap<String, String> params = new HashMap<String, String>();
		    for(int i = 0;i<tdArr.length; i++) {
		    params.put("to", tdArr[i]);	 // 문자를 보낼 전화번호를 배열로 받음
		    }
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
