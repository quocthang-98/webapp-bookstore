package com.webapp.dao.impl;

import java.util.List;

import com.opensymphony.sitemesh.webapp.decorator.BaseWebAppDecorator;
import com.webapp.dao.IBookDAO;
import com.webapp.dao.IUserDAO;
import com.webapp.mapper.BookMapper;
import com.webapp.mapper.UserMapper;
import com.webapp.model.BookModel;
import com.webapp.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {
	
	@Override
	public UserModel findByUsernameAndPassword(String username, String password) {
		StringBuilder sql= new StringBuilder("SELECT * FROM user AS u"); 
		sql.append(" INNER JOIN role AS r ON r.id = u.role_id");
		sql.append(" WHERE username = ? AND password = ?");
		List<UserModel> users = query(sql.toString(), new UserMapper(), username, password);
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public UserModel findOne(Long id) {
		String sql = "SELECT * FROM user WHERE id = ?";
		List<UserModel> users = query(sql, new UserMapper(), id);
		return users.isEmpty() ? null : users.get(0);
	}

}
