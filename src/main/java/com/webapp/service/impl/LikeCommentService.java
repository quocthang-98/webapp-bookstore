package com.webapp.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.ILikeCommentDAO;
import com.webapp.model.LikeCommentModel;
import com.webapp.servicce.ILikeCommentService;

public class LikeCommentService implements ILikeCommentService{
	
	@Inject
	ILikeCommentDAO likeCommentDAO;

	@Override
	public List<LikeCommentModel> findAll() {
		return likeCommentDAO.findAll();
	}

	@Override
	public List<LikeCommentModel> findByUserId(Long userId) {
		return likeCommentDAO.findByUserId(userId);
	}

	@Override
	public LikeCommentModel findOne(Long id) {
		return likeCommentDAO.findOne(id);
	}

	@Override
	public LikeCommentModel save(LikeCommentModel likeCommentModel) {
		likeCommentModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long id = likeCommentDAO.save(likeCommentModel);
		return likeCommentDAO.findOne(id);
	}

	@Override
	public void deleteByUserIdAndCommentId(Long userId, Long commentId) {
		likeCommentDAO.deleteByUserIdAndCommentId(userId, commentId);
		
	}

	@Override
	public LikeCommentModel findByUserIdAndCommentId(Long userId, Long commentId) {
		return likeCommentDAO.findByUserIdAndCommentId(userId, commentId);
	}

	@Override
	public int getTotalLikeByCommentId(Long commentId) {
		return likeCommentDAO.getTotalLikeByCommentId(commentId);
	}
	
}
