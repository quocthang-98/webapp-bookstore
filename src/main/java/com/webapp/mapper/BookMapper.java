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
			bookModel.setThumbnail(resultSet.getString("thumbnail"));
			bookModel.setAuthorId(resultSet.getLong("author_id"));
			bookModel.setPrice(resultSet.getDouble("price"));
			bookModel.setTypeId(resultSet.getLong("type_id"));
			bookModel.setGenreId(resultSet.getLong("genre_id"));
			bookModel.setPublicationDate(resultSet.getDate("publication_date"));
			bookModel.setPublisherId(resultSet.getLong("publisher_id"));
			bookModel.setDescription(resultSet.getString("description"));
			bookModel.setStocks(resultSet.getLong("stocks"));
			bookModel.setCreatedBy(resultSet.getString("created_by"));
			bookModel.setCreatedDate(resultSet.getTimestamp("date_created"));
			return bookModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
