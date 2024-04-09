package com.webapp.servicce;

import java.util.List;

import com.webapp.model.BookModel;

public interface IBookService {
	List<BookModel> findByTypeId(Long id);
	BookModel save(BookModel bookModel);	
	BookModel update(BookModel bookModel);
	void delete(long[] ids);
	List<BookModel> findAll();
	List<BookModel> findByConditions(Long typeId);
}
