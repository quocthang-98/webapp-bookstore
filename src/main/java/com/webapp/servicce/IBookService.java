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
	List<BookModel> findAll(Integer offset, Integer limit, Long[] typeList, Long[] genreList, String sortBy);
	List<BookModel> findByConditions(Long[] typeList, Long[] genreList);
	int getTotalItem(Long[] typeList, Long[] genreList);
	int getTotalItem(String keyWord);
	void deleteOne(Long id);
	List<BookModel> findByKeyWord(Integer offset, Integer limit, String keyWord);
}
