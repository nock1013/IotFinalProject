package com.gunzip.mongodb;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;


import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.Id;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class mongoController {
	@Autowired
	mongoService service;
	
	@RequestMapping(value="/mongo/insert.do", method=RequestMethod.POST)
	public @ResponseBody String insertData(@RequestBody String json) {
		JSONParser jp = new JSONParser();
		try {
			String getStr = jp.parse(json).toString();
			System.out.println(getStr);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/HH:mm:ss");
		String datestr = sdf.format(cal.getTime());
		mongoDTO dto = new mongoDTO();
		String result="false";
		ObjectMapper mapper = new ObjectMapper();
		try {
			dto = mapper.readValue(json, mongoDTO.class);
			dto.setSaveDate(datestr);
			System.out.println("*******"+dto);
			service.insert(dto);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping(value="/mongo/select.do", method=RequestMethod.GET, produces= {"application/json"})
	public String selectData() {
		mongoDTO dto = new mongoDTO();
		System.out.println(service.select(dto));
		return "index";
	}
	
	@RequestMapping(value="/mongo/selectAllLog.do", method=RequestMethod.GET, produces="application/text;charset=utf-8")
	public @ResponseBody String selectAllLogData(String _id) {
		ArrayList<mongoLogDTO> list = service.selectAllLog(_id);
		//System.out.println(list.toString());
		JSONArray jarr = new JSONArray();
		JSONObject jobj = new JSONObject();
		for(int i=0;i<list.size();i++) {
			jobj = new JSONObject();
			jobj.put("_id", list.get(i).get_id());
			jobj.put("msg", list.get(i).getMsg());
			jobj.put("saveDate", list.get(i).getSaveDate());
			jarr.add(jobj);
		}
		String jstr = jarr.toJSONString();
		System.out.println("log:"+jstr);
		return jstr;
	}
	
	@RequestMapping(value="/mongo/selectCarLog.do", method=RequestMethod.GET, produces="application/text;charset=utf-8")
	public @ResponseBody String selectCarLog(String _id) {
		ArrayList<mongoDTO> list = service.selectCarLog(_id);
		if(list.size()>0) {System.out.println(list.get(0));}
		JSONArray jarr = new JSONArray();
		JSONObject jobj = new JSONObject();
		for(int i=0;i<list.size();i++) {
			jobj = new JSONObject();
			jobj.put("_id", list.get(i).get_id());
			jobj.put("userid", list.get(i).getUserid());
			jobj.put("carnum", list.get(i).getCarnum());
			jobj.put("temperature", list.get(i).getTemperature());
			jobj.put("distance", list.get(i).getDistance());
			jobj.put("velocity", list.get(i).getVelocity());
			jobj.put("flame", list.get(i).getFlame());
			jobj.put("gas", list.get(i).getGas());
			jobj.put("crash", list.get(i).getCrash());
			jobj.put("saveDate", list.get(i).getSaveDate());
			jarr.add(jobj);
		}
		String jstr = jarr.toJSONString();
		System.out.println("car:"+jstr);
		return jstr;
		/*
		@Id
		String _id;
		String userid;
		String carnum;
		String temperature;
		String distance;
		String velocity;
		String flame;
		String gas;
		String crash;
		String saveDate;
		*/
	}
}
