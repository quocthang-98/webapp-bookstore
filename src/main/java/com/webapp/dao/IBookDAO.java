package com.webapp.dao;

import java.util.List;

import com.webapp.model.BookModel;

public interface IBookDAO {
	BookModel findOne(Long id);
	List<BookModel> findByType(Long id);
	Long save(BookModel bookModel);
	void update(BookModel bookModel);
	void updateStocks(BookModel bookModel);
	void delete(long id);
	List<BookModel> findAll();
	List<BookModel> findByConditions(Long[] typeList, Long[] genreList);
	int getTotalItem(Long[] typeList, Long[] genreList);
	int getTotalItem(String keyWord, String keyWord1, String keyWord2, String keyWord3);
	List<BookModel> findAll(Integer offset, Integer limit, Long[] typeList, Long[] genreList, String sortBy);
	List<BookModel> findAllSuggestionForOneBook(Integer offset, Integer limit, Long[] typeList, Long[] genreList, String sortBy, Long bookId);
	List<BookModel> findByKeyWord(Integer offset, Integer limit, String keyWord, String keyWord1, String keyWord2, String keyWord3);
}
