package com.gunzip.mandooweb.index4;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

public class index4DAOImpl implements index4DAO {
	@Autowired
	SqlSession sqlSession;

}
