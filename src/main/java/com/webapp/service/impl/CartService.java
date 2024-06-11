package com.webapp.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IAuthorDAO;
import com.webapp.dao.IBookDAO;
import com.webapp.dao.ICartDAO;
import com.webapp.dao.IGenreDAO;
import com.webapp.dao.IPublisherDAO;
import com.webapp.dao.ITypeDAO;
import com.webapp.dao.impl.BookDAO;
import com.webapp.model.AuthorModel;
import com.webapp.model.BookModel;
import com.webapp.model.CartModel;
import com.webapp.model.GenreModel;
import com.webapp.model.PublisherModel;
import com.webapp.model.TypeModel;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.ICartService;

public class CartService implements ICartService{
	
	@Inject
	ICartDAO cartDAO;
	
	@Inject
	IBookDAO bookDAO;

	@Override
	public List<CartModel> findAll() {
		return cartDAO.findAll();
	}

	@Override
	public List<CartModel> findByUserId(Long userId) {
		List<CartModel> carts = cartDAO.findByUserId(userId);
		for (CartModel cart: carts) {
			cart.setBookModel(bookDAO.findOne(cart.getBookId()));
		}
		return carts;
	}

	@Override
	public List<CartModel> findByUserIdAndOrdered(Long userId, Integer odered) {
		return cartDAO.findByUserIdAndOrdered(userId, odered);
	}

	@Override
	public List<CartModel> findByBookId(Long bookId) {
		return cartDAO.findByBookId(bookId);
	}

	@Override
	public CartModel findOne(Long id) {
		return cartDAO.findOne(id);
	}

	@Override
	public CartModel save(CartModel cartModel) {
		BookModel bookModel = bookDAO.findOne(cartModel.getBookId());
		bookModel.setStocks(bookModel.getStocks()-cartModel.getQuantity());
		bookDAO.update(bookModel);
		cartModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		cartModel.setOrdered(0);
		Long id = cartDAO.save(cartModel);
		return cartDAO.findOne(id);
	}

	@Override
	public CartModel update(CartModel cartModel) {
		CartModel oldCart = cartDAO.findOne(cartModel.getId());
		Long adjQuantity = oldCart.getQuantity() - cartModel.getQuantity();
		BookModel bookModel = bookDAO.findOne(cartModel.getBookId());
		bookModel.setStocks(bookModel.getStocks()+adjQuantity);
		bookDAO.update(bookModel);
		update(cartModel);
		return cartDAO.findOne(cartModel.getId());
	}

	@Override
	public void delete(Long id) {
		CartModel oldCart = cartDAO.findOne(id);
		if (oldCart.getOrdered()==0) {
			BookModel bookModel = bookDAO.findOne(oldCart.getBookId());
			bookModel.setStocks(bookModel.getStocks()+oldCart.getQuantity());
			bookDAO.update(bookModel);
		}
		cartDAO.delete(id);
	}

	@Override
	public CartModel findByUserIdAndBookId(Long userId, Long bookId) {
		return cartDAO.findByUserIdAndBookId(userId, bookId);
	}
	
	
}
