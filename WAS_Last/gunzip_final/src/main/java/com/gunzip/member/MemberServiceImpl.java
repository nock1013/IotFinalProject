package com.gunzip.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	@Qualifier("memberdao")
	MemberDAO dao;
	
	
	@Override
	public MemberDTO login(MemberDTO login) {
		return dao.login(login);
	}

	@Override
	public int insert(MemberDTO user) {
		return dao.insert(user);
	}

	@Override
	public MemberDTO chkID(String userID) {
		return dao.chkID(userID);
	}

	@Override
	public void updateFaceData(MemberDTO user) {
		dao.updateFaceData(user);
	}

	@Override
	public MemberDTO loginByFace(String face) {
		return dao.loginByFace(face);
	}

	@Override
	public void nowlogin(String userid) {
		dao.nowlogin(userid);
	}

	@Override
	public void nowlogout(String userid) {
		dao.nowlogout(userid);
	}
}
