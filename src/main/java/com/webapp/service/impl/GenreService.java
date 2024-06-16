package com.webapp.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IGenreDAO;
import com.webapp.model.GenreModel;
import com.webapp.servicce.IGenreService;

public class GenreService implements IGenreService{
	
	@Inject
	private IGenreDAO genreDAO;

	@Override
	public List<GenreModel> findAll() {
		return genreDAO.findAll();
		
	}
 
}
