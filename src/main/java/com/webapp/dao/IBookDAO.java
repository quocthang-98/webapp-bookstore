package com.webapp.dao;

import java.util.List;

import com.webapp.model.BookModel;

public interface IBookDAO {
	List<BookModel> findByType(Long id);
	Long save(BookModel bookModel);
}
