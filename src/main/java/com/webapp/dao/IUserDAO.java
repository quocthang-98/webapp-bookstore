package com.webapp.dao;

import java.util.List;

import com.webapp.model.UserModel;

public interface IUserDAO {
	public UserModel findByUsernameAndPassword(String username, String password);
	UserModel findOne(Long id);
	List<UserModel> findAll();
	Long save(UserModel userModel);
	void update(UserModel userModel);
	void delete(long id);
}
