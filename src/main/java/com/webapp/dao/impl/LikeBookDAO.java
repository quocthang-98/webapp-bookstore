package com.webapp.dao.impl;

import java.util.List;

import com.webapp.dao.ILikeBookDAO;
import com.webapp.mapper.LikeBookMapper;
import com.webapp.model.LikeBookModel;

public class LikeBookDAO extends AbstractDAO<LikeBookModel> implements ILikeBookDAO {

	@Override
	public List<LikeBookModel> findAll() {
		String sql = "SELECT * FROM like_book";
		return query(sql, new LikeBookMapper());
	}

	@Override
	public List<LikeBookModel> findByUserId(Long userId) {
		String sql = "SELECT * FROM like_book WHERE user_id = ?";
		return query(sql, new LikeBookMapper(), userId);
	}



	@Override
	public LikeBookModel findOne(Long id) {
		String sql = "SELECT * FROM like_book WHERE id = ?";
		List<LikeBookModel> likeBookModels = query(sql, new LikeBookMapper(), id);
		return likeBookModels.isEmpty() ? null : likeBookModels.get(0);
	}

	@Override
	public Long save(LikeBookModel likeBookModel) {
		String sql = "INSERT INTO like_book (user_id, book_id, created_by, date_created) VALUE(?, ?, ?, ?)";
		return insert(sql, likeBookModel.getUserId(), likeBookModel.getBookId(), likeBookModel.getCreatedBy(), likeBookModel.getCreatedDate());
	}


	@Override
	public void deleteByUserIdAndBookId(Long userId, Long bookId) {
		String sql = "DELETE FROM like_book WHERE user_id = ? AND book_id = ?";
		update(sql, userId, bookId);
	}

	@Override
	public LikeBookModel findByUserIdAndBookId(Long userId, Long bookId) {
		String sql = "SELECT * FROM like_book WHERE user_id = ? AND book_id = ?";
		List<LikeBookModel> likeBookModels = query(sql, new LikeBookMapper(), userId, bookId);
		return likeBookModels.isEmpty() ? null : likeBookModels.get(0);
	}

	@Override
	public int getTotalLikeByBookId(Long bookId) {
		String sql = "SELECT count(*) FROM like_book WHERE book_id = ?";
		return count(sql, bookId);
	}
	


}
