package com.webapp.servicce;

import java.util.List;

import com.webapp.model.BookModel;

public interface IBookService {
	List<BookModel> findByTypeId(Long id);
	BookModel save(BookModel bookModel);	
	BookModel update(BookModel bookModel);
	BookModel findOne(Long id);
	void delete(long[] ids);
	List<BookModel> findAll();
	List<BookModel> findAll(Integer offset, Integer limit);
	List<BookModel> findByConditions(Long typeId);
	int getTotalItem();
}
