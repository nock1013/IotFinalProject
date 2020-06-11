package com.gunzip.carlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class CarlistServiceImpl implements CarlistService {
	@Autowired
	@Qualifier("carlistdao")
	CarlistDAO dao;

	@Override
	public List<CarlistDTO> carlist(CarlistDTO dto) {
		// TODO Auto-generated method stub
		return dao.carlist(dto);
	}

	@Override
	public void attachCar(CarlistDTO dto) {
		dao.attachCar(dto);
	}

	@Override
	public void detachCar(String userid) {
		dao.detachCar(userid);
		
	}
	@Override
	public List<CarlistDTO> carUsinglist(CarlistDTO dto) {
		return dao.carUsinglist(dto);
	}

	@Override
	public CarlistDTO faceLogin(CarlistDTO dto) {
		return dao.faceLogin(dto);
	}

}
