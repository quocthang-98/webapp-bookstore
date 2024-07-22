package com.webapp.service;

import java.util.List;

import com.webapp.model.CommentModel;

public interface ICommentService {
	List<CommentModel> findAll();
	List<CommentModel> findByBookId(Long bookId);
	List<CommentModel> findByUserId(Long userId);
	CommentModel findOne(Long id);
	CommentModel save(CommentModel commentModel);
	CommentModel update(CommentModel commentModel);
	void deleteOne(Long id);
}
