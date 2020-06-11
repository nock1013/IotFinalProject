package com.gunzip.carlist;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("carlistdao")
public class CarlistDAOImpl implements CarlistDAO{
	@Autowired
	SqlSession sqlsession;

	@Override
	public List<CarlistDTO> carlist(CarlistDTO dto) {
		return sqlsession.selectList("android.gunzip.carlist.selectPlatooningCarList");
	}

	@Override
	public void attachCar(CarlistDTO dto) {
		sqlsession.update("android.gunzip.carlist.attachcarlist", dto);
	}

	@Override
	public void detachCar(String userid) {
		sqlsession.update("android.gunzip.carlist.detachcarlist", userid);
		
	}
	@Override
	public List<CarlistDTO> carUsinglist(CarlistDTO dto) {
		return sqlsession.selectList("android.gunzip.carlist.selectUsingCarList");
	}

	@Override
	public CarlistDTO faceLogin(CarlistDTO dto) {
		return sqlsession.selectOne("android.gunzip.carlist.findYourCar",dto);
	}
}
