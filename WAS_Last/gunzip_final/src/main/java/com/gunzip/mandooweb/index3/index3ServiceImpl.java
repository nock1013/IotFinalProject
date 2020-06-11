package com.gunzip.mandooweb.index3;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class index3ServiceImpl implements index3Service {
	@Autowired
	@Qualifier("daydao")
	index3DAO dao;

	@Override
	public List<index3DayDTO> selectDayData() {
		return dao.selectDayData();
	}

	@Override
	public List<index3WeatherDTO> selectWeatherData() {
		return dao.selectWeatherData();
	}

	@Override
	public List<index3YearDTO> selectYearData() {
		return dao.selectYearData();
	}

	@Override
	public List<index3DataDTO> selectMonthData() {
		return dao.selectMonthData();
	}

	@Override
	public List<index3DataDTO> selectTimeData() {
		List<index3DataDTO> timelistBefore = dao.selectTimeData();
		List<index3DataDTO> timelistAfter = new ArrayList<index3DataDTO>();
		index3DataDTO dto = new index3DataDTO();
		int cnt=0;
		for(int i=0;i<timelistBefore.size();i++) {
			cnt += timelistBefore.get(i).getCnt();
			if((i+1)%3==0) {
				String time = Integer.toString((i/3)*3)+"~"+Integer.toString((i/3)*3+3);
				dto.setData(time);
				dto.setCnt(cnt);
				timelistAfter.add(dto);
				cnt = 0;
				dto = new index3DataDTO();
			}
		}
		return timelistAfter;
	}

	@Override
	public List<index3DataDTO> selectAgeData() {
		index3DataDTO dto = new index3DataDTO();
		List<index3DataDTO> list = dao.selectAgeData();
		/*for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}*/
		List<index3DataDTO> result = new ArrayList<index3DataDTO>();
		for(int i=0;i<9;i++) {
			dto = list.get(i);
			try{
				dto.setData(Integer.parseInt(dto.getData())*10+"대");
				result.add(dto);
			}catch(NumberFormatException e){
				
			}
		}
		return result;
	}
}
