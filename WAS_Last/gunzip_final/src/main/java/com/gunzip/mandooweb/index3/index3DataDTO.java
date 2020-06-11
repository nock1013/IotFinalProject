package com.gunzip.mandooweb.index3;

public class index3DataDTO {
	String data;
	int cnt;
	
	public index3DataDTO() {
		super();
	}
	
	public index3DataDTO(String data, int cnt) {
		super();
		this.data = data;
		this.cnt = cnt;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	@Override
	public String toString() {
		return "index3DataDTO [data=" + data + ", cnt=" + cnt + "]";
	}
}
