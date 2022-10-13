
package com.semo.web.user.util.copy;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@Component
public class refund {
	
	
	public void getToken(String token, String imp_uid, int amount) throws Exception {
		System.out.println("imp"+imp_uid+"+amount"+amount);

		// requestURL 아임포트 고유키, 시크릿 키 정보를 포함하는 url 정보
		JSONObject json = new JSONObject();
		
		json.put("imp_uid", imp_uid);// 결제 완료시 나오는 imp_uid
		json.put("amount", amount);// 환불금액
		json.put("reason", "테스트결제");// 사유
		json.put("checksum", amount);// 이전 총 결제금액
		JSONObject json1 = new JSONObject();
		json1.put("data", json);

		String _token = "";

	

			URL url = new URL("https://api.iamport.kr/payments/cancel"); //환불 요청을 받을 서비스 url
			
			//아래 인스턴스는 url.openConnection() 메소드 호출에 의해서 얻어진다.
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();

			connection.setDoOutput(true);// URLConnection의 출력 스트림을 사용할지의 여부

			connection.setInstanceFollowRedirects(false);

			connection.setRequestMethod("POST"); // 스트림을 통해서 서버에 전달해야함

			connection.setRequestProperty("Content-Type", "application/json");
			connection.setRequestProperty("Authorization", token);// 앞에 token 클래스에서 생서한 토근값을 넣어줌
			connection.setDoOutput(true);
			try (OutputStream os = connection.getOutputStream()) { //서버에 데이터를 보내기 위해 먼저 연결해서 출력을 활성화한다.
				byte request_data[] = json.toString().getBytes("utf-8"); //결제정보
				os.write(request_data);//데이터 전송
				os.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			connection.connect();


			if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) { // 환불요청에 대한 응답 코드 받기
				 //getInputStream으로 URL클래스가 나타내는 자원으로 부터 데이터를 읽어온다.
				connection.getInputStream(); // 응답코드얻기 (환불완료)
			}

			connection.disconnect();

			

	}
}