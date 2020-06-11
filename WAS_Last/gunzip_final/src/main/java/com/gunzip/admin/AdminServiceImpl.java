package com.gunzip.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	@Qualifier("admindao")
	AdminDAO dao;
		
	@Override
	public AdminDTO login(AdminDTO login) {
		return dao.login(login);
	}
}
