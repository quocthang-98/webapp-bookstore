package com.webapp.dao.impl;

import java.util.List;

import com.opensymphony.sitemesh.webapp.decorator.BaseWebAppDecorator;
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
		String sql = "INSERT INTO book (title, thumbnail, author_id, price, type_id, publication_date, publisher_id, description, stocks, created_by, date_created, genre_id) VALUE(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		return insert(sql, bookModel.getTitle(), bookModel.getThumbnail(), bookModel.getAuthorId(), bookModel.getPrice(), bookModel.getTypeId(), bookModel.getPublicationDate(), bookModel.getPublisherId(), bookModel.getDescription(), bookModel.getStocks(), bookModel.getCreatedBy(), bookModel.getCreatedDate(), bookModel.getGenreId());
	}

	@Override
	public BookModel findOne(Long id) {
		String sql = "SELECT * FROM book WHERE id = ?";
		List<BookModel> books = query(sql, new BookMapper(), id);
		return books.isEmpty() ? null : books.get(0);
	}

	@Override
	public void update(BookModel bookModel) {
		String sql = "UPDATE book SET title = ?, thumbnail = ?, author_id = ?, price = ?, type_id = ?, publication_date = ?, publisher_id = ?, description = ?, stocks = ?, genre_id = ? WHERE id = ?";
		update(sql, bookModel.getTitle(), bookModel.getThumbnail(), bookModel.getAuthorId(), bookModel.getPrice(), bookModel.getTypeId(), bookModel.getPublicationDate(), bookModel.getPublisherId(), bookModel.getDescription(), bookModel.getStocks(), bookModel.getGenreId(), bookModel.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM book WHERE id = ?";
		update(sql, id);
	}

	@Override
	public List<BookModel> findAll() {
		String sql = "SELECT * FROM book";
		return query(sql, new BookMapper());
				
	}

//	@Override
//	public List<BookModel> findByConditions(Long[] typeList, Long[] genreList) {
//		StringBuilder sql = new StringBuilder("SELECT * FROM book WHERE ");
//
//		return query(sql.toString(), new BookMapper());
//	}	

	@Override
	public int getTotalItem(Long[] typeList, Long[] genreList) {
		StringBuilder sql = new StringBuilder("SELECT count(*) FROM book WHERE ");
		if (typeList[0] == null) {
			sql.append("(type_id > 0 OR type_id IS NULL)");
		} else {
			sql.append("(type_id = " + typeList[0]);
			int k=1;
			while (typeList[k] != null) {
				sql.append(" OR type_id = " + typeList[k]);
				k++;
			}
			sql.append(")");
		}
		sql.append(" AND ");
		if (genreList[0] == null) {
			sql.append("(genre_id > 0 OR genre_id IS NULL)");
		} else {
			sql.append("(genre_id = " + genreList[0]);
			int k = 1;
			while (genreList[k] != null) {
				sql.append(" OR genre_id = " +genreList[k]);
				k++;
			}
			sql.append(")");
		}
		
		return count(sql.toString());
	}

	@Override
	public List<BookModel> findAll(Integer offset, Integer limit, Long[] typeList, Long[] genreList, String sortBy) {
		StringBuilder sql = new StringBuilder("SELECT * FROM book WHERE ");
		if (typeList[0] == null) {
			sql.append("(type_id > 0 OR type_id IS NULL)");
		} else {
			sql.append("(type_id = " + typeList[0]);
			int k=1;
			while (typeList[k] != null) {
				sql.append(" OR type_id = " + typeList[k]);
				k++;
			}
			sql.append(")");
		}
		sql.append(" AND ");
		if (genreList[0] == null) {
			sql.append("(genre_id > 0 OR genre_id IS NULL)");
		} else {
			sql.append("(genre_id = " + genreList[0]);
			int k = 1;
			while (genreList[k] != null) {
				sql.append(" OR genre_id = " +genreList[k]);
				k++;
			}
			sql.append(")");
		}
		if (sortBy!=null) {
			if (sortBy.equals("Oldest")) {
				sql.append(" ORDER BY publication_date DESC");
			} else if (sortBy.equals("Lastest")) {
				sql.append(" ORDER BY publication_date ASC");
			} else if (sortBy.equals("HighestPrice")) {
				sql.append(" ORDER BY price DESC");
			} else if (sortBy.equals("LowsttPrice")) {
				sql.append(" ORDER BY price ASC");
			}
		}
		sql.append(" LIMIT ?, ?");
		return query(sql.toString(), new BookMapper(), offset, limit);
	}

	@Override
	public List<BookModel> findByConditions(Long[] typeList, Long[] genreList) {
		StringBuilder sql = new StringBuilder("SELECT * FROM book WHERE ");
		if (typeList[0] == null) {
			sql.append("(type_id > 0 OR type_id IS NULL)");
		} else {
			sql.append("(type_id = " + typeList[0]);
			int k=1;
			while (typeList[k] != null) {
				sql.append(" OR type_id = " + typeList[k]);
				k++;
			}
			sql.append(")");
		}
		sql.append(" AND ");
		if (genreList[0] == null) {
			sql.append("(genre_id > 0 OR genre_id IS NULL)");
		} else {
			sql.append("(genre_id = " + genreList[0]);
			int k = 1;
			while (genreList[k] != null) {
				sql.append(" OR genre_id = " +genreList[k]);
				k++;
			}
			sql.append(")");
		}
		return query(sql.toString(), new BookMapper());
	}

	@Override
	public List<BookModel> findByKeyWord(Integer offset, Integer limit,String keyWord, String keyWord1, String keyWord2, String keyWord3) {
		//String sql = "SELECT * FROM book WHERE title LIKE '%" +  + "%' OR description LIKE '%" +  + "%' OR title LIKE '%" +  + "%' OR description LIKE '%" +  + "%' OR title LIKE '%" +  + "%' OR description LIKE '%" +  + "%'";
		StringBuilder sql = new StringBuilder("SELECT * FROM (((book ");
		sql.append("INNER JOIN type ON book.type_id = type.id) ");
		sql.append("INNER JOIN genre ON book.genre_id = genre.id) ");
		sql.append("INNER JOIN author ON book.author_id = author.id) ");
		sql.append("WHERE (title LIKE '%" + keyWord + "%' OR description LIKE '%" + keyWord + "%' OR title LIKE '%" + keyWord1 + "%' OR description LIKE '%" + keyWord1 + "%' OR title LIKE '%" + keyWord2 + "%' OR description LIKE '%" + keyWord2 + "%' OR title LIKE '%" + keyWord3 + "%' OR description LIKE '%" + keyWord3 + "%' ");
		sql.append("OR type_name LIKE '%" + keyWord + "%' OR type_name LIKE '%" + keyWord1 + "%' OR type_name LIKE '%" + keyWord2 + "%' OR type_name LIKE '%" + keyWord3 + "%' ");
		sql.append("OR genre_name LIKE '%" + keyWord + "%' OR genre_name LIKE '%" + keyWord1 + "%' OR genre_name LIKE '%" + keyWord2 + "%' OR genre_name LIKE '%" + keyWord3 + "%' ");
		sql.append("OR name LIKE '%" + keyWord + "%' OR name LIKE '%" + keyWord1 + "%' OR name LIKE '%" + keyWord2 + "%' OR name LIKE '%" + keyWord3 + "%')");
		sql.append(" LIMIT ?, ?");
		return query(sql.toString(), new BookMapper(), offset, limit);
	}

	@Override
	public int getTotalItem(String keyWord, String keyWord1, String keyWord2, String keyWord3) {
		StringBuilder sql = new StringBuilder("SELECT count(*) FROM (((book ");
		sql.append("INNER JOIN type ON book.type_id = type.id) ");
		sql.append("INNER JOIN genre ON book.genre_id = genre.id) ");
		sql.append("INNER JOIN author ON book.author_id = author.id) ");
		sql.append("WHERE (title LIKE '%" + keyWord + "%' OR description LIKE '%" + keyWord + "%' OR title LIKE '%" + keyWord1 + "%' OR description LIKE '%" + keyWord1 + "%' OR title LIKE '%" + keyWord2 + "%' OR description LIKE '%" + keyWord2 + "%' OR title LIKE '%" + keyWord3 + "%' OR description LIKE '%" + keyWord3 + "%' ");
		sql.append("OR type_name LIKE '%" + keyWord + "%' OR type_name LIKE '%" + keyWord1 + "%' OR type_name LIKE '%" + keyWord2 + "%' OR type_name LIKE '%" + keyWord3 + "%' ");
		sql.append("OR genre_name LIKE '%" + keyWord + "%' OR genre_name LIKE '%" + keyWord1 + "%' OR genre_name LIKE '%" + keyWord2 + "%' OR genre_name LIKE '%" + keyWord3 + "%' ");
		sql.append("OR name LIKE '%" + keyWord + "%' OR name LIKE '%" + keyWord1 + "%' OR name LIKE '%" + keyWord2 + "%' OR name LIKE '%" + keyWord3 + "%')");
		return count(sql.toString());
	}

}
