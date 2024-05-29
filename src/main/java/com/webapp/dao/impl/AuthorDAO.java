package com.webapp.dao.impl;

import java.util.List;

import com.webapp.dao.IAuthorDAO;
import com.webapp.mapper.AuthorMapper;
import com.webapp.model.AuthorModel;

public class AuthorDAO extends AbstractDAO<AuthorModel> implements IAuthorDAO {

	@Override
	public List<AuthorModel> findAll() {
		String sql = "SELECT * FROM author";
		return query(sql, new AuthorMapper());
	}

	@Override
	public AuthorModel findOne(Long id) {
		String sql = "SELECT * FROM author WHERE id = ?";
		List<AuthorModel> authors = query(sql, new AuthorMapper(), id);
		return authors.isEmpty() ? null : authors.get(0);
	}
}
