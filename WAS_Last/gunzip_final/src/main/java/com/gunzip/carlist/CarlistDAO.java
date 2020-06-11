package com.gunzip.carlist;

import java.util.List;

public interface CarlistDAO {
	List<CarlistDTO> carlist(CarlistDTO dto);
	void attachCar(CarlistDTO dto);
	void detachCar(String userid);
	List<CarlistDTO> carUsinglist(CarlistDTO dto);
	CarlistDTO faceLogin(CarlistDTO dto);
}
