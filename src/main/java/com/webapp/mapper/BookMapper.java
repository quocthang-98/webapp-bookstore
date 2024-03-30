package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.BookModel;

public class BookMapper implements RowMapper<BookModel> {

	@Override
	public BookModel mapRow(ResultSet resultSet) {
		try {
			BookModel bookModel = new BookModel();
			bookModel.setId(resultSet.getLong("id"));
			bookModel.setTitle(resultSet.getString("title"));
			bookModel.setPrice(resultSet.getDouble("price"));
			bookModel.setTypeId(resultSet.getLong("type_id"));
			return bookModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
