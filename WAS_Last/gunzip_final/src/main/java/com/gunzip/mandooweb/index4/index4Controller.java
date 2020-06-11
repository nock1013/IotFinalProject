package com.gunzip.mandooweb.index4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class index4Controller {
	@Autowired
	index4Service service;
	
	@RequestMapping(value = "/index4.do", method = RequestMethod.GET)
	public ModelAndView index4() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index4");
		return mav;
	}
	
	@RequestMapping(value = "/index5.do", method = RequestMethod.GET)
	public String index5() {
		/*ModelAndView mav = new ModelAndView();
		mav.setViewName("index4");*/
		return "index5";
	}
	
	@RequestMapping(value = "/index6.do", method = RequestMethod.GET)
	public String index6(String day, String age, String weather, String time) {
		URL url = null;
		String path = "http://70.12.116.60:5000/oracleread?day="+day+"&age="+age+"&weather="+weather+"&time="+time;
		try {
			url = new URL(path);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	        connection.setRequestMethod("GET");
	        connection.setRequestProperty("Content-Type","application/text");
	        int result = connection.getResponseCode();
	        BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(),"UTf-8"));
	        String res = in.readLine();
	        System.out.println("result :"+res);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "index6";
	}
	
	@RequestMapping(value = "/index6_get.do", method = RequestMethod.GET)
	public @ResponseBody String index6_get(String day, String age, String weather, String time) {
		URL url = null;
		String path = "http://70.12.116.60:5000/oracleread?day="+day+"&age="+age+"&weather="+weather+"&time="+time;
		System.out.println("path:"+path);
		try {
			url = new URL(path);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	        connection.setRequestMethod("GET");
	        connection.setRequestProperty("Content-Type","application/text");
	        int result = connection.getResponseCode();
	        BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(),"UTf-8"));
	        String res = in.readLine();
	        System.out.println("result :"+res);
	        return res;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "0";
	}
	
}
