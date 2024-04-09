package com.webapp.service.impl;

import java.sql.Timestamp;
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
		bookModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		bookModel.setCreatedBy("");
		Long bookId = bookDAO.save(bookModel);
		return bookDAO.findOne(bookId);
	}

	@Override
	public BookModel update(BookModel bookModel) {
		BookModel oldBook = bookDAO.findOne(bookModel.getId());
		bookModel.setCreatedBy(oldBook.getCreatedBy());
		bookModel.setCreatedDate(oldBook.getCreatedDate());
		bookDAO.update(bookModel);	
		return bookDAO.findOne(bookModel.getId());
	}

	@Override
	public void delete(long[] ids) {
		for (long id: ids) {
			bookDAO.delete(id);
		}
	}

	@Override
	public List<BookModel> findAll() {
		return bookDAO.findAll();
	}

	@Override
	public List<BookModel> findByConditions(Long typeId) {
		return bookDAO.findByConditions(typeId);
	}
}
