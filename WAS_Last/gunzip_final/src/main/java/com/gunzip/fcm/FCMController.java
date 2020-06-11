package com.gunzip.fcm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FCMController {
	@Qualifier("fcmservice")
	@Autowired
	FCMService service;
	
	
	// 태블릿 키 저장
	@RequestMapping(value = "/fcm/fcm_check", method = RequestMethod.GET)
	public String getToken(String token) {
		int result = service.getToken(token);
		if(result==1) {
			System.out.println("저장완료");
		}
		return "redirect:/index.do";
	}
	
}







