package com.gunzip.mandooweb.index3;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("daydao")
public class index3DAOImpl implements index3DAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<index3DayDTO> selectDayData() {
		return sqlSession.selectList("android.gunzip.accident.dayData");
	}

	@Override
	public List<index3WeatherDTO> selectWeatherData() {
		return sqlSession.selectList("android.gunzip.accident.weatherData");
	}

	@Override
	public List<index3YearDTO> selectYearData() {
		return sqlSession.selectList("android.gunzip.accident.yearData");
	}

	@Override
	public List<index3DataDTO> selectMonthData() {
		return sqlSession.selectList("android.gunzip.accident.monthData");
	}

	@Override
	public List<index3DataDTO> selectTimeData() {
		return sqlSession.selectList("android.gunzip.accident.timeData");
	}

	@Override
	public List<index3DataDTO> selectAgeData() {
		return sqlSession.selectList("android.gunzip.accident.ageData");
	}	
}
