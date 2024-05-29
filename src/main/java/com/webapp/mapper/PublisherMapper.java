package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.PublisherModel;
import com.webapp.model.TypeModel;

public class PublisherMapper implements RowMapper<PublisherModel> {

	@Override
	public PublisherModel mapRow(ResultSet resultSet) {
		try {
			PublisherModel publisherModel = new PublisherModel();
			publisherModel.setId(resultSet.getLong("id"));
			publisherModel.setName(resultSet.getString("name"));
			publisherModel.setHeadquarterLocation(resultSet.getString("headquarters_location"));
			return publisherModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
