package com.gunzip.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberdao")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public MemberDTO login(MemberDTO login) {
		MemberDTO mem = sqlSession.selectOne("android.gunzip.member.login", login);
		System.out.println(mem);
		return mem;
	}

	@Override
	public int insert(MemberDTO user) {
		int result = sqlSession.insert("android.gunzip.member.memInsert",user);
		return result;
	}

	@Override
	public MemberDTO chkID(String userID) {
		return sqlSession.selectOne("android.gunzip.member.chk", userID);
	}

	@Override
	public void updateFaceData(MemberDTO user) {
		sqlSession.update("android.gunzip.member.updateFace", user);
	}

	@Override
	public MemberDTO loginByFace(String face) {
		return sqlSession.selectOne("android.gunzip.member.loginByFace", face);
	}

	@Override
	public void nowlogin(String userid) {
		sqlSession.update("android.gunzip.member.nowlogin", userid);
	}

	@Override
	public void nowlogout(String userid) {
		sqlSession.update("android.gunzip.member.nowlogout", userid);
	}
}
