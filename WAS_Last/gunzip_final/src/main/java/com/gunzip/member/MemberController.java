package com.gunzip.member;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gunzip.carlist.CarlistDTO;
import com.gunzip.carlist.CarlistService;
import com.gunzip.mongodb.mongoLogMethod;
import com.gunzip.mongodb.mongoService;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	@Autowired
	mongoService mservice;
	@Autowired
	CarlistService cservice;
	
	@RequestMapping(value="/member/login.do", method=RequestMethod.POST)
	public @ResponseBody String login(@RequestBody String json) {
		MemberDTO dto;
		System.out.println(json);
		String result="false";
		ObjectMapper mapper = new ObjectMapper();
		try {
			dto = mapper.readValue(json, MemberDTO.class);
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
	}
	
	/*@RequestMapping(value="/member/insert.do", method=RequestMethod.POST, produces="application/json;charset=utf-8")
	public String insert(String userID, String name, String password, String phone, String birth, String gender, String token) {
		MemberDTO user = new MemberDTO(userID,name,password,phone,birth,gender,token);
		System.out.println(user);
		//service.insert(user);
		return "member";
	}*/
	
	@RequestMapping(value="/member/insert.do", method=RequestMethod.POST)
	public @ResponseBody String insert(@RequestBody String json) {
		System.out.println(json);
		ObjectMapper mapper = new ObjectMapper();
		String str="0";
		try {
			MemberDTO dto = mapper.readValue(json, MemberDTO.class);
			System.out.println("=============="+dto);
			int result = service.insert(dto);
			if(result==1) {
				str="1";
				mongoLogMethod lmt = new mongoLogMethod(mservice, "NewMember", dto.getName()+"=>"+dto.getUserID());
				lmt.insertMsgLog();
			}else {
				str="0";
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return str;
	}
	
	@RequestMapping(value="/member/chk.do", method=RequestMethod.POST)
	public @ResponseBody String chkID(String userID) {
		System.out.println(userID);
		if(service.chkID(userID)==null) {
			System.out.println("Non-Existing ID");
			return "0";
		}else{
			System.out.println("Existing ID");
			return "1";
		}
	}
	@RequestMapping(value="/member/updateface.do", method=RequestMethod.POST)
	public @ResponseBody String updateFaceData(@RequestBody String json) {
		System.out.println(json);
		ObjectMapper mapper = new ObjectMapper();
		try {
			MemberDTO dto = mapper.readValue(json, MemberDTO.class);
			System.out.println("=============="+dto);
			service.updateFaceData(dto);
			mongoLogMethod lmt = new mongoLogMethod(mservice, "UpdateFace", dto.getUserID()+"=>"+dto.getFace());
			lmt.insertMsgLog();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "1";
	}
	
	@RequestMapping(value="/member/faceLogin.do", method=RequestMethod.POST)
	public @ResponseBody String loginByFace(String face, String carnum) {
		System.out.println("face:"+face+" carnum:"+carnum);
		MemberDTO dto = service.loginByFace(face);
		System.out.println(dto);
		CarlistDTO cardto = new CarlistDTO(carnum, dto.getUserID(), "");
		System.out.println(cardto);
		CarlistDTO status = cservice.faceLogin(cardto);
		System.out.println("status:"+status);
		
		if(status==null) {
			System.out.println("Non-Existing ID");
			return "0/0";
		}else{
			if(dto.getLogin()!=null) {
				return "0/0";
			}else {
				System.out.println("dto:"+dto);
				service.nowlogin(dto.getUserID());
				mongoLogMethod lmt = new mongoLogMethod(mservice, "LoginByFace", status.getStatus()+"="+face+"->"+carnum);
				lmt.insertMsgLog();
				System.out.println(dto.getUserID()+"/"+"1");
				return dto.getUserID()+"/"+"1";
			}
		}
	}
	/*
	@RequestMapping(value="/member/faceLogin.do", method=RequestMethod.POST)
	public @ResponseBody String loginByFace(@RequestBody String face) {
		System.out.println("facelogin:"+face);
		MemberDTO result = new MemberDTO();
		ObjectMapper mapper = new ObjectMapper();
		try {
			String faceStr = mapper.readValue(face, String.class);
			System.out.println("=============="+faceStr);
			result = service.loginByFace(faceStr);
			System.out.println("result:"+result);
			mongoLogMethod lmt = new mongoLogMethod(mservice, "LoginByFace", faceStr);
			lmt.insertMsgLog();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result.toString();
	}
	*/
}
