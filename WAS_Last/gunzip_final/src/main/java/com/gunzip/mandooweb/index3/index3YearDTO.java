package com.gunzip.mandooweb.index3;

public class index3YearDTO {
	String year;
	int yearcnt;
	
	public index3YearDTO() {
		super();
	}

	public index3YearDTO(String year, int yearcnt) {
		super();
		this.year = year;
		this.yearcnt = yearcnt;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public int getyearcnt() {
		return yearcnt;
	}

	public void setyearcnt(int yearcnt) {
		this.yearcnt = yearcnt;
	}

	@Override
	public String toString() {
		return "index3YearDTO [year=" + year + ", yearcnt=" + yearcnt + "]";
	}
}
