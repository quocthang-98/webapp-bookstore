package com.webapp.dao;

import java.util.List;

import com.webapp.model.AuthorModel;
import com.webapp.model.BookModel;

public interface IAuthorDAO {
	List<AuthorModel> findAll();
	AuthorModel findOne(Long id);
	List<AuthorModel> findByKeyWord(String keyWord1, String keyWord2, String keyWord3);
	Long save(AuthorModel authorModel);
	void update(AuthorModel authorModel);
	void delete(long id);
}
