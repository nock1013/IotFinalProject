package com.gunzip.mandooweb.index3;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class index3Controller {
	@Autowired
	index3Service service;
	
	@RequestMapping(value = "/index3.do", method = RequestMethod.GET)
	public ModelAndView index3() {
		ModelAndView mav = new ModelAndView();
		//연도별 사고 통계 조회
		List<index3YearDTO> yearList = service.selectYearData();
		//월별 사고 통계 조회
			//10 11 12 1 2 3 4 5 6 7 8 9
		List<index3DataDTO> monthList = service.selectMonthData();
			//1 ~ 12로 정렬
		for(int i=0;i<3;i++) {
			monthList.add(monthList.get(0));
			monthList.remove(0);
		}
		//요일별 사고 통계 조회(가나다순)
			//금요일 목요일 수요일 월요일 일요일 토요일 화요일
		List<index3DayDTO> daydtolist = service.selectDayData();
			//월화수목금토일로 순서 변경
		List<index3DayDTO> dayresultlist = new ArrayList<index3DayDTO>();
		dayresultlist.add(daydtolist.get(3));
		dayresultlist.add(daydtolist.get(6));
		dayresultlist.add(daydtolist.get(2));
		dayresultlist.add(daydtolist.get(1));
		dayresultlist.add(daydtolist.get(0));
		dayresultlist.add(daydtolist.get(5));
		dayresultlist.add(daydtolist.get(4));
		//시간대별 사고 통계 조회(3시간 단위)
		List<index3DataDTO> timeList = service.selectTimeData();
		//기상별 사고 통계 조회
		List<index3WeatherDTO> weatherList = service.selectWeatherData();
		//연령별 사고 통계 조회
		List<index3DataDTO> ageList = service.selectAgeData();
		
		//화면에 값 세팅
		mav.addObject("yearcnt", yearList);//연도별 사고 통계
		mav.addObject("monthcnt", monthList);//월별 사고 통계
		mav.addObject("daycnt", dayresultlist);//요일별 사고 통계
		mav.addObject("timecnt", timeList);//시간대별 사고 통계
		mav.addObject("weathercnt", weatherList);//기상별 사고 통계
		mav.addObject("agecnt", ageList);//연령대별 사고 통계
		mav.setViewName("/index3");
		return mav;
	}
}
