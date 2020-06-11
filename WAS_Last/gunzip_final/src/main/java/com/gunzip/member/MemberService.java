package com.gunzip.member;

public interface MemberService {
	MemberDTO login(MemberDTO login);
	int insert(MemberDTO user);
	MemberDTO chkID(String userID);
	void updateFaceData(MemberDTO user);
	MemberDTO loginByFace(String face);
	void nowlogin(String userid);
	void nowlogout(String userid);
}
