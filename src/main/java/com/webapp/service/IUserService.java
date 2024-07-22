package com.webapp.service;

import java.util.List;

import com.webapp.model.UserModel;

public interface IUserService {
	public UserModel findByUsernameAndPassword(String username, String password);
	UserModel save(UserModel userModel);
	List<UserModel> findAll();
}
