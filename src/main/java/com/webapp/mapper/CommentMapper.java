package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.CommentModel;

public class CommentMapper implements RowMapper<CommentModel> {

	@Override
	public CommentModel mapRow(ResultSet resultSet) {
		try {
			CommentModel commentModel = new CommentModel();
			commentModel.setId(resultSet.getLong("id"));
			commentModel.setContent(resultSet.getString("content"));
			commentModel.setUserId(resultSet.getLong("user_id"));
			commentModel.setBookId(resultSet.getLong("book_id"));
			commentModel.setLikes(resultSet.getLong("likes"));
			commentModel.setCreatedBy(resultSet.getString("created_by"));
			commentModel.setCreatedDate(resultSet.getTimestamp("date_created"));
			return commentModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
