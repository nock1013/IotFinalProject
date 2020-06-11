package com.gunzip.fcm;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gunzip.carlist.CarlistDTO;
import com.gunzip.carlist.CarlistService;

@Service("fcmservice")
public class FCMServiceImpl implements FCMService {
	@Autowired
	@Qualifier("fcmdao")
	FCMDAO dao;
	
	
	FCMServiceImpl(){
		System.out.println("생성");
	}
	
	
	@Override
	public int getToken(String token) {
		int result = 0;
		if(dao.getToken(token)==null) {
			System.out.println("토큰없어");
			result = dao.insert(token);
		}
		return result;
	}

	@Override
	public FCMDTO getClientToken(String id) {
		// TODO Auto-generated method stub
		return dao.getClientToken(id);
	}

	// 조건에 맞춰 메시지 전송
	public void sendMessage(String id, String TOKEN) {
		
		// id, 토큰 - carlist에서 불러오므로 DB 갔다올 필요 X
		FCMDTO result = new FCMDTO(id, TOKEN);
		// 서비스키 등록
		String apiKey = "AAAASHX_Axw:APA91bE0nlxZl9j6Vdac_p9TPNj0FOb3qyytdgM_D1fpfMRlbN3TW6TwABtfyEYOUvfqHuyewwDMf1g7mIMepTzmdajjaCbFyfr4sDF6j0xE6svE1x1t1SP_KL0QcUFU52m5V9d07y4w";
		try {
			URL url = new URL("https://fcm.googleapis.com/fcm/send");
			HttpsURLConnection connection = (HttpsURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type","application/json");
			connection.setRequestProperty("Authorization","key="+apiKey);
			
			// MessageDTO와 SendDataDTO는 주어진 스펙이므로 그대로 사용
			MessageDTO msg = new MessageDTO("FCM테스트","위험~~");
			SendDataDTO senddto = new SendDataDTO(msg, result.getFcm_token());
			//메시지 정보를 셋팅한다.
			ObjectMapper mapper = new ObjectMapper();
			String jsonString = mapper.writeValueAsString(senddto);
			//System.out.println("변환===> "+jsonString);
			//서버로 데이터 전달하기
			OutputStream os = connection.getOutputStream();
			os.write(jsonString.getBytes("UTF-8"));
			os.flush();
			os.close();
			
			//firebase서버가 전달하는 응답메시지 받기(확인용. 안 받아도 됨)
			BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			StringBuffer sb = new StringBuffer();
			//System.out.println("br====>"+br);
			while(true) {
				String line = br.readLine();
				if(line==null) {
					break;
				}
				sb.append(line);
			}
			br.close();
			//System.out.println(sb.toString());
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	

}
