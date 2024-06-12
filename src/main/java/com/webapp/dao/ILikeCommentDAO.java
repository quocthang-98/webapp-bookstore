package com.webapp.dao;

import java.util.List;

import com.webapp.model.CartModel;
import com.webapp.model.LikeBookModel;
import com.webapp.model.LikeCommentModel;

public interface ILikeCommentDAO {
	List<LikeCommentModel> findAll();
	List<LikeCommentModel> findByUserId(Long userId);
	LikeCommentModel findOne(Long id);
	Long save(LikeCommentModel likeCommentModel);
	void deleteByUserIdAndCommentId(Long userId, Long commentId);
	LikeCommentModel findByUserIdAndCommentId(Long userId, Long commentId);
	int getTotalLikeByCommentId(Long commentId);
}
