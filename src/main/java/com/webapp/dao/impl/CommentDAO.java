package com.webapp.dao.impl;

import java.util.List;

import com.webapp.dao.ICommentDAO;
import com.webapp.mapper.CommentMapper;
import com.webapp.model.CommentModel;

public class CommentDAO extends AbstractDAO<CommentModel> implements ICommentDAO {

	@Override
	public List<CommentModel> findAll() {
		String sql = "SELECT * FROM comment";
		return query(sql, new CommentMapper());
	}

	@Override
	public List<CommentModel> findByBookId(Long bookId) {
		String sql = "SELECT * FROM comment WHERE book_id = ? ORDER BY id DESC";
		return query(sql, new CommentMapper(), bookId);
	}

	@Override
	public List<CommentModel> findByUserId(Long userId) {
		String sql = "SELECT * FROM comment WHERE user_id = ?";
		return query(sql, new CommentMapper(), userId);
	}

	@Override
	public CommentModel findOne(Long id) {
		String sql = "SELECT * FROM comment WHERE id = ?";
		List<CommentModel> comments = query(sql, new CommentMapper(), id);
		return comments.isEmpty() ? null : comments.get(0);
	}

	@Override
	public Long save(CommentModel commentModel) {
		String sql = "INSERT INTO comment (content, user_id, book_id, likes, created_by, date_created) VALUE(?, ?, ?, ?, ?, ?)";
		return insert(sql, commentModel.getContent(), commentModel.getUserId(), commentModel.getBookId(), commentModel.getLikes(), commentModel.getCreatedBy(), commentModel.getCreatedDate());
	}

	@Override
	public void update(CommentModel commentModel) {
		String sql = "UPDATE comment SET content = ?, likes = ? WHERE id = ?";
		update(sql, commentModel.getContent(), commentModel.getLikes(), commentModel.getId());
	}

	@Override
	public void delete(Long id) {
		String sql = "DELETE FROM comment WHERE id = ?";
		update(sql, id);
	}
	
	

}
