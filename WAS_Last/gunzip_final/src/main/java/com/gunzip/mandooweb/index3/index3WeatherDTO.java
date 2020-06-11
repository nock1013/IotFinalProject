package com.gunzip.mandooweb.index3;

public class index3WeatherDTO {
	private String weather;
    private int cnt;
    
	public index3WeatherDTO() {
		super();
	}

	public index3WeatherDTO(String weather, int cnt) {
		super();
		this.weather = weather;
		this.cnt = cnt;
	}
	
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "index3WeatherDTO [weather=" + weather + ", cnt=" + cnt + "]";
	}
}