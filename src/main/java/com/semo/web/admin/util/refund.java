
package com.semo.web.admin.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class refund {
	public String getToken(String token) throws Exception {

		// requestURL 아임퐅크 고유키, 시크릿 키 정보를 포함하는 url 정보
		JSONObject json = new JSONObject();
		
		json.put("imp_uid", "imp_949335515456");// 결제 완료시 나오는 imp_uid
		json.put("amount", "200");// 환불금액
		json.put("reason", "테스트결제");// 사유
		json.put("checksum", "200");// 이전 총 결제금액
		JSONObject json1 = new JSONObject();
		json1.put("data", json);

		String _token = "";

		try {

			String requestString = "";

			URL url = new URL("https://api.iamport.kr/payments/cancel");

			HttpURLConnection connection = (HttpURLConnection) url.openConnection();

			connection.setDoOutput(true);// 바디에 파라미터 작성 하게 하는 코드

			connection.setInstanceFollowRedirects(false);

			connection.setRequestMethod("POST");

			connection.setRequestProperty("Content-Type", "application/json");
			connection.setRequestProperty("Authorization", token);// 토근값
			connection.setDoOutput(true);
			try (OutputStream os = connection.getOutputStream()) {
				byte request_data[] = json.toString().getBytes("utf-8");
				os.write(request_data);
				os.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			connection.connect();

			StringBuilder sb = new StringBuilder();

			if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) {

				BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));

				String line = null;

				while ((line = br.readLine()) != null) {

					sb.append(line + "\n");

				}

				br.close();

				requestString = sb.toString();

			}

			connection.disconnect();

			JSONParser jsonParser = new JSONParser();

			JSONObject jsonObj = (JSONObject) jsonParser.parse(requestString);
			System.out.println(jsonObj);
			if ((Long) jsonObj.get("code") == 0) {

				JSONObject getToken = (JSONObject) jsonObj.get("response");

				System.out.println("getToken==>>" + getToken.get("access_token"));

				_token = (String) getToken.get("access_token");
				System.out.println("Asdafa");
			}

		} catch (Exception e) {

			e.printStackTrace();

			_token = "";

		}
		System.out.println(_token);
		return _token;

	}
}