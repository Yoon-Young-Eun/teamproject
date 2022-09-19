//package com.semo.web.user.util.copy;
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//import java.io.OutputStream;
//import java.net.HttpURLConnection;
//import java.net.URL;
//
//import org.json.simple.JSONObject;
//import org.json.simple.parser.JSONParser;
//import org.springframework.stereotype.Component;
//
//
//@Component
//public class token {
//   private static final String String = null;
//
//public static String getToken(String imp_uid, int amount) throws Exception {
//	  System.out.println("imp"+imp_uid+"+amount"+amount);
//      // requestURL 아임퐅크 고유키, 시크릿 키 정보를 포함하는 url 정보
//      JSONObject json = new JSONObject();
//
//      json.put("imp_key","1751316265583627");//홈페이지에 나오는 resetapi
//      json.put("imp_secret","2lymp7BEkHOQPn4zvmZ0VhesNnT9naOffKuOZyTt1JqcweEQxm3swwGElfLRCXBZSeDPZ9h1Xx7UWJIY");//위에꺼 바로밑에있는 secretkey
//
//      String _token = "";
//      String requestString = "";
//      try {
//
//         
//         requestString = "";
//         URL url = new URL("https://api.iamport.kr/users/getToken/");
//
//         HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//
//         connection.setDoOutput(true);
//
//         connection.setInstanceFollowRedirects(false);
//
//         connection.setRequestMethod("POST");
//
//         connection.setRequestProperty("Content-Type", "application/json");
//
//         OutputStream os = connection.getOutputStream();
//
//         os.write(json.toString().getBytes());
//
//         connection.connect();
//
//         StringBuilder sb = new StringBuilder();
//
//         if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) {
//
//            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
//
//            String line = null;
//
//            while ((line = br.readLine()) != null) {
//
//               sb.append(line + "\n");
//
//            }
//
//            br.close();
//
//            requestString = sb.toString();
//
//         }
//
//         os.flush();
//
//         connection.disconnect();
//
//         //null값이면 오류남
//         System.out.println("제이슨 시작");
//           JSONParser jsonParser = new JSONParser();
//           
//           JSONObject jsonObj = (JSONObject) jsonParser.parse(requestString);
//          
//         
//           if ((Long) jsonObj.get("code") == 0) {
//        	   System.out.println("code가 0이면");
//           JSONObject getToken = (JSONObject) jsonObj.get("response");
//           
//           System.out.println("getToken==>>" + getToken.get("access_token"));
//           
//           _token = (String) getToken.get("access_token");
//           
//
//              
//           
//      
//           }
//    
//
//      } catch (Exception e) {
//
//         e.printStackTrace();
//
//         _token = "";
//
//      }
//
//      refund rf = new refund();
//      rf.getToken(_token, imp_uid, amount);
//      
//      
//
//      return requestString;
//
//}
//   
//   
//   
//   
//}