package com.gunzip.fcm;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("fcmdao")
public class FCMDAOImpl implements FCMDAO {
	@Autowired
	SqlSession sqlsession;

	@Override
	public FCMDTO getToken(String token) {
		System.out.println("============"+token);
		return sqlsession.selectOne("com.gunzip.fcm.readToken", token);
	}

	@Override
	public int insert(String token) {
		return sqlsession.insert("com.gunzip.fcm.insertToken", token);
	}

	@Override
	public FCMDTO getClientToken(String id) {
		System.out.println("============"+id);
		return sqlsession.selectOne("com.gunzip.fcm.readClientToken", id);
	}
	

}
