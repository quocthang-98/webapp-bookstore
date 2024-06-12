package com.webapp.dao;

import java.util.List;

import com.webapp.model.CartModel;
import com.webapp.model.LikeBookModel;

public interface ILikeBookDAO {
	List<LikeBookModel> findAll();
	List<LikeBookModel> findByUserId(Long userId);
	LikeBookModel findOne(Long id);
	Long save(LikeBookModel likeBookModel);
	void deleteByUserIdAndBookId(Long userId, Long bookId);
	LikeBookModel findByUserIdAndBookId(Long userId, Long bookId);
	int getTotalLikeByBookId(Long bookId);
}
