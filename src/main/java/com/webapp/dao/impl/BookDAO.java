package com.webapp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.webapp.dao.IBookDAO;
import com.webapp.mapper.BookMapper;
import com.webapp.model.BookModel;

public class BookDAO extends AbstractDAO<BookModel> implements IBookDAO{


	@Override
	public List<BookModel> findByType(Long id) {
		String sql = "SELECT * FROM book WHERE type_id = ?";
		return query(sql, new BookMapper(), id);
	}

	@Override
	public Long save(BookModel bookModel) {
		String sql = "INSERT INTO book (title, price, type_id) VALUE(?, ?, ?)";
		return insert(sql, bookModel.getTitle(), bookModel.getPrice(), bookModel.getTypeId());
	}
		
}
