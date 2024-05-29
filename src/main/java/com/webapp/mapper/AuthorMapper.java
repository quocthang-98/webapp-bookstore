package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.AuthorModel;
import com.webapp.model.TypeModel;

public class AuthorMapper implements RowMapper<AuthorModel> {

	@Override
	public AuthorModel mapRow(ResultSet resultSet) {
		try {
			AuthorModel authorModel = new AuthorModel();
			authorModel.setId(resultSet.getLong("id"));
			authorModel.setName(resultSet.getString("name"));
			authorModel.setNationality("nationality");
			return authorModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
