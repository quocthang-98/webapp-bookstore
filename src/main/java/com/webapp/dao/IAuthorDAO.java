package com.webapp.dao;

import java.util.List;

import com.webapp.model.AuthorModel;

public interface IAuthorDAO {
	List<AuthorModel> findAll();
	AuthorModel findOne(Long id);
}
