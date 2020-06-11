package com.gunzip.mandooweb;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gunzip.admin.AdminDTO;
import com.gunzip.admin.AdminService;
import com.gunzip.carlist.CarlistDTO;
import com.gunzip.carlist.CarlistService;
import com.gunzip.fcm.FCMService;
import com.gunzip.mongodb.mongoLogMethod;
import com.gunzip.mongodb.mongoService;

@Controller
public class HomeController {
	@Autowired
	AdminService service;
	@Autowired
	mongoService mongoservice;
	@Autowired
	CarlistService carService;
	@Autowired
	FCMService fcmService;
	
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String adminLogin() {
		return "login";
	}
	
	@RequestMapping(value = "/index.do", method = RequestMethod.POST)
	public String indexPOST(AdminDTO dto, HttpServletRequest req) {
		//System.out.println(req);
		//System.out.println(dto.getid()+","+dto.getPassword());
		//System.out.println(service.toString());
		AdminDTO result = service.login(dto);
		if(result==null) {
			return "login";
		}else {
			mongoLogMethod lmethod = new mongoLogMethod(mongoservice, dto);
			lmethod.insertAdminLoginLog();
			return "redirect:index.do";
		}
	}
	
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String index() {
		
		return "index";
	}
	
	@RequestMapping(value = "/index2.do", method = RequestMethod.GET)
	public String index2() {
		return "index2";
	}
	
	// TODO: 현정 ============================================================

	@RequestMapping(value="/web/score.do",
			method=RequestMethod.GET,
			produces="application/json;charset=utf-8")
	public @ResponseBody String dangerScore(String beforePoint0, String beforePoint1, String point0, String point1) {
		String score = ApiExplorer.readJson(beforePoint0, beforePoint1, point0, point1);
		
		Pattern p = Pattern.compile("anals_value.*}]}");
		Matcher m = p.matcher(score);
		
		String data = null;
		if (m.find()) {
			data = m.group(); //패턴과 일치하는 단어
			//System.out.println(data);
		}
		String[] result = data.split(",");
		for (int i = 0; i < result.length; i++) {
			// 앞에서 :"부분까지 지우기, 뒤에 "부터 지우기
			int idx = result[i].indexOf(":");
			result[i] = result[i].substring(idx).replaceAll(":|\"|}|]", "");
			//System.out.println(result[i]);
		}
		
		String value = result[0];
		String grd = result[1];
		
		System.out.println("위험도지수: "+value+" / "+grd);
		// FCM 메시지 전송
		/*if(Integer.parseInt(grd) >= 3) {
			List<CarlistDTO> list = getUsingList();
			System.out.println("위험하다~~");
			for(int i=0; i<list.size(); ++i) {
				System.out.println(list.get(i).getCarnum()+":"+ list.get(i).getToken());
				fcmService.sendMessage(list.get(i).getCarnum(), list.get(i).getToken());
			}
		}*/
		return value+","+grd;
	}

	
	// 메소드 - 군집주행 중인 차량 리스트를 가져옴
	public List<CarlistDTO> getUsingList() {
		CarlistDTO dto = new CarlistDTO();
		List<CarlistDTO> list = carService.carUsinglist(dto);
		
		return list;
			
	}
	
	
}