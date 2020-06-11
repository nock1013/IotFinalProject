package com.gunzip.mongodb;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="test")
public class mongoDTO {
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
	
	public mongoDTO() {
		super();
	}

	public mongoDTO(String userid, String carnum, String temperature, String distance, String velocity) {
		super();
		this.userid = userid;
		this.carnum = carnum;
		this.temperature = temperature;
		this.distance = distance;
		this.velocity = velocity;
	}

	public mongoDTO(String userid, String carnum, String temperature, String distance, String velocity, String flame,
			String gas, String crash) {
		super();
		this.userid = userid;
		this.carnum = carnum;
		this.temperature = temperature;
		this.distance = distance;
		this.velocity = velocity;
		this.flame = flame;
		this.gas = gas;
		this.crash = crash;
	}
	
	public String get_id() {
		return _id;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getCarnum() {
		return carnum;
	}

	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}

	public String getTemperature() {
		return temperature;
	}

	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}

	public String getDistance() {
		return distance;
	}

	public void setDistance(String distance) {
		this.distance = distance;
	}

	public String getVelocity() {
		return velocity;
	}

	public void setVelocity(String velocity) {
		this.velocity = velocity;
	}

	public String getFlame() {
		return flame;
	}

	public void setFlame(String flame) {
		this.flame = flame;
	}

	public String getGas() {
		return gas;
	}

	public void setGas(String gas) {
		this.gas = gas;
	}

	public String getCrash() {
		return crash;
	}

	public void setCrash(String crash) {
		this.crash = crash;
	}

	public String getSaveDate() {
		return saveDate;
	}

	public void setSaveDate(String saveDate) {
		this.saveDate = saveDate;
	}

	@Override
	public String toString() {
		return "mongoDTO [_id=" + _id + ", userid=" + userid + ", carnum=" + carnum + ", temperature=" + temperature
				+ ", distance=" + distance + ", velocity=" + velocity + ", flame=" + flame + ", gas=" + gas + ", crash="
				+ crash + ", saveDate=" + saveDate + "]";
	}

}