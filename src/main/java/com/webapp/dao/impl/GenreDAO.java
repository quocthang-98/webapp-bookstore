package com.webapp.dao.impl;

import java.util.List;

import com.webapp.dao.IGenreDAO;
import com.webapp.mapper.GenreMapper;
import com.webapp.model.GenreModel;

public class GenreDAO extends AbstractDAO<GenreModel> implements IGenreDAO{

	@Override
	public List<GenreModel> findAll() {
		String sql = "SELECT * FROM genre";
		return query(sql, new GenreMapper());
	}

	@Override
	public GenreModel findOne(Long id) {
		String sql = "SELECT * FROM genre WHERE id = ?";
		List<GenreModel> genres = query(sql, new GenreMapper(), id);
		return genres.isEmpty() ? null : genres.get(0);
	}

}
