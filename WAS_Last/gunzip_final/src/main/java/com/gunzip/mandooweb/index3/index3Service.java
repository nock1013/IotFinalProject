package com.gunzip.mandooweb.index3;

import java.util.List;

public interface index3Service {
	List<index3YearDTO> selectYearData();
	List<index3DataDTO> selectMonthData();
	List<index3DayDTO> selectDayData();
	List<index3DataDTO> selectTimeData();
	List<index3WeatherDTO> selectWeatherData();
	List<index3DataDTO> selectAgeData();
}
