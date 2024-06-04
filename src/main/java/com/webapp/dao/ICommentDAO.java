package com.webapp.dao;

import java.util.List;

import com.webapp.model.CommentModel;

public interface ICommentDAO {
	List<CommentModel> findAll();
	List<CommentModel> findByBookId(Long bookId);
	List<CommentModel> findByUserId(Long userId);
	CommentModel findOne(Long id);
	Long save(CommentModel commentModel);
	void update(CommentModel commentModel);
	void delete(Long id);
	
}
