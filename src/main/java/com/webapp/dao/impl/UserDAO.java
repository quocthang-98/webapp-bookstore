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

	@Override
	public List<UserModel> findAll() {
		String sql = "SELECT * FROM user";
		return query(sql, new UserMapper());
	}

	@Override
	public Long save(UserModel userModel) {
		String sql = "INSERT INTO user (role_id, first_name, last_name, email, address, tel, created_by, date_created, username, password) VALUE(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		return insert(sql, userModel.getRoleId(), userModel.getFirstName(), userModel.getLastName(), userModel.getEmail(), userModel.getAddress(), userModel.getTel(), userModel.getCreatedBy(), userModel.getCreatedDate(), userModel.getUsername(), userModel.getPassword());
	}

	@Override
	public void update(UserModel userModel) {
		String sql = "UPDATE user SET role_id = ?, first_name = ?, last_name = ?, address = ?, tel = ?, password = ? WHERE id = ?";
		update(sql, userModel.getRoleId(), userModel.getFirstName(), userModel.getLastName(), userModel.getAddress(), userModel.getTel(), userModel.getPassword(), userModel.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM user WHERE id = ?";
		update(sql);
	}

}
