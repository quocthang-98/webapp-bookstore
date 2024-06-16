package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.LikeBookModel;

public class LikeBookMapper implements RowMapper<LikeBookModel> {

	@Override
	public LikeBookModel mapRow(ResultSet resultSet) {
		try {
			LikeBookModel likeBookModel = new LikeBookModel();
			likeBookModel.setId(resultSet.getLong("id"));
			likeBookModel.setUserId(resultSet.getLong("user_id"));
			likeBookModel.setBookId(resultSet.getLong("book_id"));
			likeBookModel.setCreatedBy(resultSet.getString("created_by"));
			likeBookModel.setCreatedDate(resultSet.getTimestamp("date_created"));
			return likeBookModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
