package com.webapp.servicce;

import java.util.List;

import com.webapp.model.LikeBookModel;

public interface ILikeBookService {
	List<LikeBookModel> findAll();
	List<LikeBookModel> findByUserId(Long userId);
	LikeBookModel findOne(Long id);
	LikeBookModel save(LikeBookModel likeBookModel);
	void deleteByUserIdAndBookId(Long userId, Long bookId);
	LikeBookModel findByUserIdAndBookId(Long userId, Long bookId);
	int getTotalLikeByBookId(Long bookId);
}
