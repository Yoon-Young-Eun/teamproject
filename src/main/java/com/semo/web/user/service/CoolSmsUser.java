package com.semo.web.user.service;

import java.util.HashMap;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Component
public class CoolSmsUser {

	//문자 본인인증
		public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {
			  String api_key = "NCSK8KGKIZD54AMU"; 
			  String api_secret = "Z3E8MTR7D5HA5BFTR0FDJXETBQS6AIVU"; 
			 
			  Message coolsms = new Message(api_key, api_secret);
			    
			  HashMap<String, String> params = new HashMap<String, String>();
			    params.put("to", userPhoneNumber);	
			    params.put("from", "01031721622");	
			    params.put("type", "SMS");
			    params.put("text", "[세모] 인증번호는 "+ "[ " + randomNumber + " ]" + " 입니다");

			    params.put("app_version", "test app 1.2"); 
			    // application name and version
			    System.out.println("cool" + randomNumber);
			    try {
			      JSONObject obj = (JSONObject) coolsms.send(params);
			      System.out.println(obj.toString());
			    } catch (CoolsmsException e) {
			      System.out.println(e.getMessage());
			      System.out.println(e.getCode());
			    }
		}
}
