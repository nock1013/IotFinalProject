package com.gunzip.mongodb;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import com.gunzip.admin.AdminDTO;

public class mongoLogMethod {
	mongoService mongoservice;
	mongoDTO dto;
	AdminDTO admindto;
	mongoLogDTO logdto;
	String msg;
	String msgType;
	
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/HH:mm:ss");
	String datestr = sdf.format(cal.getTime());
		
	public mongoLogMethod(mongoService mongoservice,String msgType, String msg) {
		super();
		this.mongoservice = mongoservice;
		this.msgType = msgType;
		this.msg = msg;
	}

	public mongoLogMethod(mongoService mongoservice, mongoDTO dto) {
		super();
		this.mongoservice = mongoservice;
		this.dto = dto;
	}
	
	public mongoLogMethod(mongoService mongoservice, mongoLogDTO logdto) {
		super();
		this.mongoservice = mongoservice;
		this.logdto = logdto;
	}
	
	public mongoLogMethod(mongoService mongoservice, AdminDTO admindto) {
		super();
		this.mongoservice = mongoservice;
		this.admindto = admindto;
	}

	public void insertAdminLoginLog() {
		mongoLogDTO mDTO = new mongoLogDTO("[T]:"+datestr+" [LOGIN]:"+admindto.getid(),datestr);
		mongoservice.insertLog(mDTO);
	}
	
	public void insertMsgLog() {
		mongoLogDTO mDTO = new mongoLogDTO("[T]:"+datestr+" ["+msgType+"]:"+msg,datestr);
		mongoservice.insertLog(mDTO);
	}
}
