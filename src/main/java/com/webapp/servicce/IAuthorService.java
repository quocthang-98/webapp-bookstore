package com.webapp.servicce;

import java.util.List;

import com.webapp.model.AuthorModel;

public interface IAuthorService {
	List<AuthorModel> findAll();
	AuthorModel save(AuthorModel authorModel);
	AuthorModel update(AuthorModel authorModel);
	void delete(long id);
	AuthorModel findOne(Long id);
}
