package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.TypeModel;

public class TypeMapper implements RowMapper<TypeModel> {

	@Override
	public TypeModel mapRow(ResultSet resultSet) {
		try {
			TypeModel typeModel = new TypeModel();
			typeModel.setId(resultSet.getLong("id"));
			typeModel.setName(resultSet.getString("type_name"));
			typeModel.setCreatedBy(resultSet.getString("created_by"));
			typeModel.setCreatedDate(resultSet.getTimestamp("date_created"));
			return typeModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
