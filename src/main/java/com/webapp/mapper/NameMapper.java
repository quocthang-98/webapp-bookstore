package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.NameModel;

public class NameMapper implements RowMapper<NameModel>{

	@Override
	public NameModel mapRow(ResultSet resultSet) {
		try {
			NameModel nameModel = new NameModel();
			nameModel.setName(resultSet.getString(1));
			return nameModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
