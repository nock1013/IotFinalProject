package com.gunzip.admin;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gunzip.mongodb.mongoDTO;
import com.gunzip.mongodb.mongoLogDTO;
import com.gunzip.mongodb.mongoLogMethod;
import com.gunzip.mongodb.mongoService;

@Controller
public class AdminController {
	/*@Autowired
	AdminService service;
	@Autowired
	mongoService mongoservice;
	
	@RequestMapping(value="/admin/login.do", method=RequestMethod.POST)
	public @ResponseBody String login(@RequestBody String json) {
		AdminDTO dto;
		System.out.println(json);
		String result="false";
		ObjectMapper mapper = new ObjectMapper();
		try {
			dto = mapper.readValue(json, AdminDTO.class);
			System.out.println("*******"+dto);
			if(service.login(dto)!=null) {
				result = "true";
				System.out.println(result);
			}else{
				result = "false";
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}*/
}
