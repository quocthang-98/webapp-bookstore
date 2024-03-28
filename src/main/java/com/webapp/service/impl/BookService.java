package com.webapp.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IBookDAO;
import com.webapp.dao.impl.BookDAO;
import com.webapp.model.BookModel;
import com.webapp.servicce.IBookService;

public class BookService implements IBookService{
	
	@Inject
	private IBookDAO bookDAO;

	@Override
	public List<BookModel> findByTypeId(Long id) {
		return bookDAO.findByType(id);
	}

	@Override
	public BookModel save(BookModel bookModel) {
		Long bookId = 	bookDAO.save(bookModel);
		System.out.print(bookId);
		return null;
	}
 
}
