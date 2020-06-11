package com.gunzip.mongodb;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class mongoServiceImpl implements mongoService {
	@Autowired
	mongoDAOImpl dao;

	@Override
	public void insert(mongoDTO dto) {
		dao.insert(dto);
	}

	@Override
	public ArrayList<mongoDTO> select(mongoDTO dto) {
		return dao.select(dto);
	}

	@Override
	public void insertLog(mongoLogDTO dto) {
		dao.insertLog(dto);
	}
	
	@Override
	public ArrayList<mongoLogDTO> selectAllLog(String _id) {
		return dao.selectAllLog(_id);
	}

	@Override
	public ArrayList<mongoDTO> selectCarLog(String _id) {
		return dao.selectCarLog(_id);
	}
}
