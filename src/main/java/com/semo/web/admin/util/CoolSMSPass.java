package com.semo.web.admin.util;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


public class CoolSMSPass {
	
	public void sendMessage(String userPhoneNumber,int randomNumber) {
		 String api_key = "NCSK8KGKIZD54AMU";   //coolsns 가입후 받는 키
		  String api_secret = "Z3E8MTR7D5HA5BFTR0FDJXETBQS6AIVU"; // //coolsns 가입후 받는 키  
		  Message coolsms = new Message(api_key, api_secret);
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", userPhoneNumber);	 // 문자를 보낼 전화번호를 배열로 받음

		    params.put("from", "01075156522");	
		    params.put("type", "LMS");
		    params.put("text", "[TEST]인증번호는" +"["+randomNumber+"]"+"입니다.");
		    System.out.println(randomNumber);
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
