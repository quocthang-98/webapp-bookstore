package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.LikeCommentModel;

public class LikeCommentMapper implements RowMapper<LikeCommentModel> {

	@Override
	public LikeCommentModel mapRow(ResultSet resultSet) {
		try {
			LikeCommentModel likeCommentModel = new LikeCommentModel();
			likeCommentModel.setId(resultSet.getLong("id"));
			likeCommentModel.setUserId(resultSet.getLong("user_id"));
			likeCommentModel.setCommentId(resultSet.getLong("comment_id"));
			likeCommentModel.setCreatedBy(resultSet.getString("created_by"));
			likeCommentModel.setCreatedDate(resultSet.getTimestamp("date_created"));
			return likeCommentModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
