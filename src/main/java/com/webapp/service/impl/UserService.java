package com.webapp.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IBookDAO;
import com.webapp.dao.IUserDAO;
import com.webapp.model.UserModel;
import com.webapp.servicce.IUserService;

public class UserService implements IUserService{
	
	@Inject
	private IUserDAO userDAO;

	@Override
	public UserModel findByUsernameAndPassword(String username, String password) {
		return userDAO.findByUsernameAndPassword(username, password);
	}

}