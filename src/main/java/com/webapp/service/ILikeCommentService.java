package com.webapp.service;

import java.util.List;

import com.webapp.model.LikeCommentModel;

public interface ILikeCommentService {
	List<LikeCommentModel> findAll();
	List<LikeCommentModel> findByUserId(Long userId);
	LikeCommentModel findOne(Long id);
	LikeCommentModel save(LikeCommentModel likeCommentModel);
	void deleteByUserIdAndCommentId(Long userId, Long commentId);
	LikeCommentModel findByUserIdAndCommentId(Long userId, Long commentId);
	int getTotalLikeByCommentId(Long commentId);
}
