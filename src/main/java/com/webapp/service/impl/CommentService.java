package com.webapp.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IAuthorDAO;
import com.webapp.dao.IBookDAO;
import com.webapp.dao.ICommentDAO;
import com.webapp.dao.IGenreDAO;
import com.webapp.dao.IPublisherDAO;
import com.webapp.dao.ITypeDAO;
import com.webapp.dao.IUserDAO;
import com.webapp.dao.impl.BookDAO;
import com.webapp.model.AuthorModel;
import com.webapp.model.BookModel;
import com.webapp.model.CommentModel;
import com.webapp.model.GenreModel;
import com.webapp.model.PublisherModel;
import com.webapp.model.TypeModel;
import com.webapp.model.UserModel;
import com.webapp.service.IBookService;
import com.webapp.service.ICommentService;
import com.webapp.service.ILikeCommentService;

public class CommentService implements ICommentService{
	@Inject
	ICommentDAO commentDAO;
	
	@Inject
	IBookDAO bookDAO;
	
	@Inject
	IUserDAO userDAO;
	
	@Inject
	ILikeCommentService likeCommentService;
	
	@Override
	public List<CommentModel> findAll() {
		List<CommentModel> commentList = commentDAO.findAll();
		BookModel bookModel;
		UserModel userModel;
		for(CommentModel commentModel:commentList) {
			bookModel = bookDAO.findOne(commentModel.getBookId());
			commentModel.setBookName(bookModel.getTitle());
			userModel = userDAO.findOne(commentModel.getUserId());
			commentModel.setUserName(userModel.getUsername());
			commentModel.setLikeNumber(likeCommentService.getTotalLikeByCommentId(commentModel.getId()));
		}
		return commentList;
	}

	@Override
	public List<CommentModel> findByBookId(Long bookId) {
		List<CommentModel> commentList = commentDAO.findByBookId(bookId);
		BookModel bookModel;
		UserModel userModel;
		for(CommentModel commentModel:commentList) {
			bookModel = bookDAO.findOne(commentModel.getBookId());
			commentModel.setBookName(bookModel.getTitle());
			userModel = userDAO.findOne(commentModel.getUserId());
			commentModel.setUserName(userModel.getUsername());
			commentModel.setLikeNumber(likeCommentService.getTotalLikeByCommentId(commentModel.getId()));
		}
		return commentList;
	}

	@Override
	public List<CommentModel> findByUserId(Long userId) {
		return commentDAO.findByUserId(userId);
	}

	@Override
	public CommentModel findOne(Long id) {
		return commentDAO.findOne(id);
	}

	@Override
	public CommentModel save(CommentModel commentModel) {
		commentModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long commentId = commentDAO.save(commentModel);
		return commentDAO.findOne(commentId);
	}

	@Override
	public CommentModel update(CommentModel commentModel) {
		commentDAO.update(commentModel);
		return commentDAO.findOne(commentModel.getId());
	}

	@Override
	public void deleteOne(Long id) {
		commentDAO.delete(id);
	}
	
}
