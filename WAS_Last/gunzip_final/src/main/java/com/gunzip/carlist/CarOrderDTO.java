package com.gunzip.carlist;

public class CarOrderDTO {
	String carnum;
	String carorder;
	
	public CarOrderDTO(String carnum, String carorder) {
		super();
		this.carnum = carnum;
		this.carorder = carorder;
	}
	
	public CarOrderDTO() {
		super();
	}

	public String getCarnum() {
		return carnum;
	}

	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}

	public String getCarorder() {
		return carorder;
	}

	public void setCarorder(String carorder) {
		this.carorder = carorder;
	}

	@Override
	public String toString() {
		return "CarOrderDTO [carnum=" + carnum + ", carorder=" + carorder + "]";
	}
}
