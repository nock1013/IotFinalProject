package com.gunzip.mongodb;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="loglist")
public class mongoLogDTO {
	@Id
	String _id;
	
	String msg;
	String saveDate;
		
	public mongoLogDTO() {
		super();
	}

	public mongoLogDTO(String msg, String saveDate) {
		super();
		this.msg = msg;
		this.saveDate = saveDate;
	}

	public String get_id() {
		return _id;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getSaveDate() {
		return saveDate;
	}

	public void setSaveDate(String saveDate) {
		this.saveDate = saveDate;
	}

	@Override
	public String toString() {
		return "mongoLogDTO [_id=" + _id + ", msg=" + msg + ", saveDate=" + saveDate + "]";
	}
}	
