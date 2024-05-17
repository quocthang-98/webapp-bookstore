package com.webapp.dao;

import com.webapp.model.UserModel;

public interface IUserDAO {
	public UserModel findByUsernameAndPassword(String username, String password);
}
