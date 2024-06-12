package com.webapp.dao.impl;

import java.util.List;

import com.opensymphony.sitemesh.webapp.decorator.BaseWebAppDecorator;
import com.webapp.dao.IBookDAO;
import com.webapp.dao.ICartDAO;
import com.webapp.dao.ILikeBookDAO;
import com.webapp.dao.ILikeCommentDAO;
import com.webapp.mapper.BookMapper;
import com.webapp.mapper.CartMapper;
import com.webapp.mapper.LikeBookMapper;
import com.webapp.mapper.LikeCommentMapper;
import com.webapp.model.BookModel;
import com.webapp.model.CartModel;
import com.webapp.model.LikeBookModel;
import com.webapp.model.LikeCommentModel;

public class LikeCommentDAO extends AbstractDAO<LikeCommentModel> implements ILikeCommentDAO {

	@Override
	public List<LikeCommentModel> findAll() {
		String sql = "SELECT * FROM like_comment";
		return query(sql, new LikeCommentMapper());
	}

	@Override
	public List<LikeCommentModel> findByUserId(Long userId) {
		String sql = "SELECT * FROM like_comment WHERE user_id = ?";
		return query(sql, new LikeCommentMapper(), userId);
	}

	@Override
	public LikeCommentModel findOne(Long id) {
		String sql = "SELECT * FROM like_comment WHERE id = ?";
		List<LikeCommentModel> likeCommentModels = query(sql, new LikeCommentMapper(), id);
		return likeCommentModels.isEmpty() ? null : likeCommentModels.get(0);
	}

	@Override
	public Long save(LikeCommentModel likeCommentModel) {
		String sql = "INSERT INTO like_comment (user_id, comment_id, created_by, date_created) VALUE(?, ?, ?, ?)";
		return insert(sql, likeCommentModel.getUserId(), likeCommentModel.getCommentId(), likeCommentModel.getCreatedBy(), likeCommentModel.getCreatedDate());
	}


	@Override
	public void deleteByUserIdAndCommentId(Long userId, Long commentId) {
		String sql = "DELETE FROM like_comment WHERE user_id = ? AND comment_id = ?";
		update(sql, userId, commentId);
	}

	@Override
	public LikeCommentModel findByUserIdAndCommentId(Long userId, Long commentId) {
		String sql = "SELECT * FROM like_comment WHERE user_id = ? AND comment_id = ?";
		List<LikeCommentModel> likeCommentModels = query(sql, new LikeCommentMapper(), userId, commentId);
		return likeCommentModels.isEmpty() ? null : likeCommentModels.get(0);
	}

	@Override
	public int getTotalLikeByCommentId(Long commentId) {
		String sql = "SELECT count(*) FROM like_comment WHERE comment_id = ?";
		return count(sql, commentId);
	}
}
