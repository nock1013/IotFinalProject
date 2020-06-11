package com.gunzip.admin;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("admindao")
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public AdminDTO login(AdminDTO login) {
		AdminDTO mem = sqlSession.selectOne("web.gunzip.admin.login", login);
		return mem;
	}
}
