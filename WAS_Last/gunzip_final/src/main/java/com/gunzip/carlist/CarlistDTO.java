package com.gunzip.carlist;

public class CarlistDTO {
	private String carnum;
	private String status;
	private String savedate;
	private String token;
	
	public CarlistDTO() {
		
	}

	public CarlistDTO(String carnum, String status, String savedate) {
		super();
		this.carnum = carnum;
		this.status = status;
		this.savedate = savedate;
	}
	

	public CarlistDTO(String carnum, String status, String savedate, String token) {
		super();
		this.carnum = carnum;
		this.status = status;
		this.savedate = savedate;
		this.token = token;
	}

	public String getCarnum() {
		return carnum;
	}

	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSavedate() {
		return savedate;
	}

	public void setSavedate(String savedate) {
		this.savedate = savedate;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	@Override
	public String toString() {
		return "CarlistDTO [carnum=" + carnum + ", status=" + status + ", savedate=" + savedate + "]";
	}
	
	
}
