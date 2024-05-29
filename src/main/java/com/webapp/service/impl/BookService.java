package com.webapp.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IAuthorDAO;
import com.webapp.dao.IBookDAO;
import com.webapp.dao.IGenreDAO;
import com.webapp.dao.IPublisherDAO;
import com.webapp.dao.ITypeDAO;
import com.webapp.dao.impl.BookDAO;
import com.webapp.model.AuthorModel;
import com.webapp.model.BookModel;
import com.webapp.model.GenreModel;
import com.webapp.model.PublisherModel;
import com.webapp.model.TypeModel;
import com.webapp.servicce.IBookService;

public class BookService implements IBookService{
	
	@Inject
	private IBookDAO bookDAO;
	
	@Inject
	private ITypeDAO typeDAO;
	
	@Inject
	private IGenreDAO genreDAO;
	
	@Inject
	private IPublisherDAO publisherDAO;
	
	@Inject
	private IAuthorDAO authorDAO;

	@Override
	public List<BookModel> findByTypeId(Long id) {
		return bookDAO.findByType(id);
	}

	@Override
	public BookModel save(BookModel bookModel) {
		bookModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long bookId = bookDAO.save(bookModel);
		return bookDAO.findOne(bookId);
	}

	@Override
	public BookModel update(BookModel bookModel) {
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
		List<BookModel> bookList = bookDAO.findByConditions(typeId);
		TypeModel typeModel;
		GenreModel genreModel;
		PublisherModel publisherModel;
		AuthorModel authorModel;
		for (BookModel book: bookList) {
			typeModel = null;
			genreModel = null;
			publisherModel = null;
			authorModel = null;
			typeModel = typeDAO.findOne(book.getTypeId());
			genreModel = genreDAO.findOne(book.getGenreId());
			publisherModel = publisherDAO.findOne(book.getPublisherId());
			authorModel = authorDAO.findOne(book.getAuthorId());
			if (genreModel != null) book.setGenreName(genreModel.getName());
			if (publisherModel != null) book.setPublisherName(publisherModel.getName());
			if (typeModel != null) book.setTypeName(typeModel.getName());
			if (authorModel != null) book.setAuthorName(authorModel.getName());
		}
		return bookList;
	}

	@Override
	public int getTotalItem() {
		return bookDAO.getTotalItem();
	}

	@Override
	public List<BookModel> findAll(Integer offset, Integer limit) {
		return bookDAO.findAll(offset, limit);
	}

	@Override
	public BookModel findOne(Long id) {
		BookModel bookModel = bookDAO.findOne(id);
		TypeModel typeModel = typeDAO.findOne(bookModel.getTypeId());
		GenreModel genreModel = genreDAO.findOne(bookModel.getGenreId());
		PublisherModel publisherModel = publisherDAO.findOne(bookModel.getPublisherId());
		AuthorModel authorModel = authorDAO.findOne(bookModel.getAuthorId());
		if (genreModel != null) bookModel.setGenreName(genreModel.getName());
		if (publisherModel != null) bookModel.setPublisherName(publisherModel.getName());
		if (typeModel != null) bookModel.setTypeName(typeModel.getName());
		if (authorModel!=null) bookModel.setAuthorName(authorModel.getName());
		return bookModel;
	}

	@Override
	public void deleteOne(Long id) {
		bookDAO.delete(id);
	}
}
