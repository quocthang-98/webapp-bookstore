package com.webapp.servicce;

import java.util.List;

import com.webapp.model.GenreModel;

public interface IGenreService {
	List<GenreModel> findAll();
}