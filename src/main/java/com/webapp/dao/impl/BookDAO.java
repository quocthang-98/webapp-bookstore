package com.webapp.dao.impl;

import java.util.List;

import com.webapp.dao.IBookDAO;
import com.webapp.mapper.BookMapper;
import com.webapp.model.BookModel;

public class BookDAO extends AbstractDAO<BookModel> implements IBookDAO {

	@Override
	public List<BookModel> findByType(Long id) {
		String sql = "SELECT * FROM book WHERE type_id = ?";
		return query(sql, new BookMapper(), id);
	}

	@Override
	public Long save(BookModel bookModel) {
		String sql = "INSERT INTO book (title, thumbnail, author_id, price, type_id, publication_date, publisher_id, description, stocks, created_by, date_created) VALUE(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		return insert(sql, bookModel.getTitle(), bookModel.getThumbnail(), bookModel.getAuthorId(), bookModel.getPrice(), bookModel.getTypeId(), bookModel.getPublicationDate(), bookModel.getPublisherId(), bookModel.getDescription(), bookModel.getStocks(), bookModel.getCreatedBy(), bookModel.getCreatedDate());
	}

	@Override
	public BookModel findOne(Long id) {
		String sql = "SELECT * FROM book WHERE id = ?";
		List<BookModel> books = query(sql, new BookMapper(), id);
		return books.isEmpty() ? null : books.get(0);
	}

	@Override
	public void update(BookModel bookModel) {
		String sql = "UPDATE book SET title = ?, thumbnail = ?, author_id = ?, price = ?, type_id = ?, publication_date = ?, publisher_id = ?, description = ?, stocks = ?, created_by = ?, date_created = ? WHERE id = ?";
		update(sql, bookModel.getTitle(), bookModel.getThumbnail(), bookModel.getAuthorId(), bookModel.getPrice(), bookModel.getTypeId(), bookModel.getPublicationDate(), bookModel.getPublisherId(), bookModel.getDescription(), bookModel.getStocks(), bookModel.getCreatedBy(), bookModel.getCreatedDate(), bookModel.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM book WHERE id = ?";
		update(sql, id);
	}

}
