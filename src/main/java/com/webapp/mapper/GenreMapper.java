package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.GenreModel;
import com.webapp.model.TypeModel;

public class GenreMapper implements RowMapper<GenreModel> {

	@Override
	public GenreModel mapRow(ResultSet resultSet) {
		try {
			GenreModel genreModel = new GenreModel();
			genreModel.setId(resultSet.getLong("id"));
			genreModel.setName(resultSet.getString("genre_name"));
			genreModel.setCreatedBy(resultSet.getString("created_by"));
			genreModel.setCreatedDate(resultSet.getTimestamp("date_created"));
			return genreModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
