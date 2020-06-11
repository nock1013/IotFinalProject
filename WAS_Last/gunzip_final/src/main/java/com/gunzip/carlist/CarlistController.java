package com.gunzip.carlist;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gunzip.member.MemberDTO;
import com.gunzip.member.MemberService;
import com.gunzip.mongodb.mongoLogMethod;
import com.gunzip.mongodb.mongoService;

@Controller
public class CarlistController {
	@Autowired
	CarlistService service;
	@Autowired
	mongoService mservice;
	@Autowired
	MemberService memservice;
	
	@RequestMapping(value="/carlist/select.do", method=RequestMethod.GET,
					produces="application/json;charset=utf-8")
	public @ResponseBody List<CarlistDTO> carlist() {
		CarlistDTO dto = new CarlistDTO();
		List<CarlistDTO> list = service.carlist(dto);
		System.out.println(list);
		return list;
	}
	@RequestMapping(value="/carlist/attach.do", method=RequestMethod.POST)
	public String attachCar(@RequestBody String json) {
		System.out.println(json);
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			List<CarlistDTO> list = Arrays.asList(mapper.readValue(json, CarlistDTO[].class));
			for(int i=0;i<list.size();i++) {
				System.out.println("*******"+list.get(i));
				service.attachCar(list.get(i));
				mongoLogMethod lmtd = new mongoLogMethod(mservice, "SetPltning", list.get(i).getStatus()+"=>"+list.get(i).getCarnum());
				lmtd.insertMsgLog();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}	
	
	@RequestMapping(value="/carlist/detach.do", method=RequestMethod.POST)
	public String detachCar(@RequestBody String json) {
		String result = "";
		MemberDTO dto = new MemberDTO();
		ObjectMapper mapper = new ObjectMapper();
		try {
			dto = mapper.readValue(json, MemberDTO.class);
			result = dto.getUserID();
			System.out.println("logout:"+result);
			memservice.nowlogout(result);
			service.detachCar(result);
			mongoLogMethod lmt = new mongoLogMethod(mservice, "CarDetachAll", result);
			lmt.insertMsgLog();	
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//군집주행 중인 차량 목록 및 수
	@RequestMapping(value="/carlist/getPlatooningList.do", method=RequestMethod.POST)
	public String getPlatooningCarList(ArrayList<CarlistDTO> dtolist) {
		String result = "";
		for(int i=0;i<dtolist.size();i++) {
			CarlistDTO dto = dtolist.get(i);
			service.attachCar(dto);
			mongoLogMethod lmt = new mongoLogMethod(mservice, "CarAttach", dto.getStatus()+"=>"+dto.getCarnum());
			lmt.insertMsgLog();
		}	
		return result;
	}
	@RequestMapping(value="carlist/getUsingList.do",method=RequestMethod.GET,produces="application/text;charset=utf-8")
	public @ResponseBody String getUsingList() {
		CarlistDTO dto = new CarlistDTO();
		List<CarlistDTO> list = service.carUsinglist(dto);
		JSONArray jarr = new JSONArray();
		JSONObject job = new JSONObject();
		for(int i=0;i<list.size();i++) {
			job = new JSONObject();
			job.put("carnum", list.get(i).getCarnum());
			job.put("userid", list.get(i).getStatus());
			job.put("savedate", list.get(i).getSavedate());
			jarr.add(job);
		}
		String jstr = jarr.toJSONString();
		System.out.println("제이슨===>"+jstr);
		return jstr;
	}
}
