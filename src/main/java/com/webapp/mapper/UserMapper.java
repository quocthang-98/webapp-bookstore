package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.RoleModel;
import com.webapp.model.UserModel;

public class UserMapper implements RowMapper<UserModel>{

	@Override
	public UserModel mapRow(ResultSet resultSet) {
		try {
			UserModel userModel = new UserModel();
			userModel.setId(resultSet.getLong("id"));
			userModel.setRoleId(resultSet.getLong("role_id"));
			userModel.setFirstName(resultSet.getString("first_name"));
			userModel.setLastName(resultSet.getString("last_name"));
			userModel.setEmail(resultSet.getString("email"));
			userModel.setAddress(resultSet.getString("address"));
			userModel.setTel(resultSet.getString("tel"));
			userModel.setUsername(resultSet.getString("username"));
			userModel.setPassword(resultSet.getString("password"));
			userModel.setCreatedBy(resultSet.getString("created_by"));
			userModel.setCreatedDate(resultSet.getTimestamp("date_created"));
			try {
				RoleModel roleModel = new RoleModel();
				roleModel.setName(resultSet.getString("role_name"));
				userModel.setRoleModel(roleModel);
			} catch (Exception e) {
				
			}

			return userModel;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
