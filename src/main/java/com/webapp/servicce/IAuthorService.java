package com.webapp.servicce;

import java.util.List;

import com.webapp.model.AuthorModel;

public interface IAuthorService {
	List<AuthorModel> findAll();
}
