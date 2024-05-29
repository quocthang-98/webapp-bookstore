package com.webapp.dao;

import java.util.List;

import com.webapp.model.GenreModel;

public interface IGenreDAO {
	List<GenreModel> findAll();
	GenreModel findOne(Long id);
}
