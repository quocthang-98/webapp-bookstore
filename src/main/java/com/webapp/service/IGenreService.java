package com.webapp.service;

import java.util.List;

import com.webapp.model.GenreModel;

public interface IGenreService {
	List<GenreModel> findAll();
}