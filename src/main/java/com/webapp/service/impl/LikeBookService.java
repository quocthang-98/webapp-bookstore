package com.webapp.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.ILikeBookDAO;
import com.webapp.model.LikeBookModel;
import com.webapp.service.ILikeBookService;

public class LikeBookService implements ILikeBookService{

	@Inject
	ILikeBookDAO likeBookDAO;
	
	@Override
	public List<LikeBookModel> findAll() {
		return likeBookDAO.findAll();
	}

	@Override
	public List<LikeBookModel> findByUserId(Long userId) {
		return likeBookDAO.findByUserId(userId);
	}

	@Override
	public LikeBookModel findOne(Long id) {
		return likeBookDAO.findOne(id);
	}

	@Override
	public LikeBookModel save(LikeBookModel likeBookModel) {
		likeBookModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long id = likeBookDAO.save(likeBookModel);
		return likeBookDAO.findOne(id);
	}

	@Override
	public void deleteByUserIdAndBookId(Long userId, Long bookId) {
		likeBookDAO.deleteByUserIdAndBookId(userId, bookId);
		
	}

	@Override
	public LikeBookModel findByUserIdAndBookId(Long userId, Long bookId) {
		return likeBookDAO.findByUserIdAndBookId(userId, bookId);
	}

	@Override
	public int getTotalLikeByBookId(Long bookId) {
		return likeBookDAO.getTotalLikeByBookId(bookId);
	}
	

	
	
}
