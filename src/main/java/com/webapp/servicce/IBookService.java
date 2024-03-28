package com.webapp.servicce;

import java.util.List;

import com.webapp.model.BookModel;

public interface IBookService {
	List<BookModel> findByTypeId(Long id);
	BookModel save(BookModel bookModel);	
}
