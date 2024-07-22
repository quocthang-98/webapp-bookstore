package com.webapp.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IAuthorDAO;
import com.webapp.dao.IBookDAO;
import com.webapp.dao.ICartDAO;
import com.webapp.dao.IGenreDAO;
import com.webapp.dao.IPublisherDAO;
import com.webapp.dao.ITypeDAO;
import com.webapp.model.AuthorModel;
import com.webapp.model.BookModel;
import com.webapp.model.CartModel;
import com.webapp.model.GenreModel;
import com.webapp.model.PublisherModel;
import com.webapp.model.TypeModel;
import com.webapp.service.ICartService;

public class CartService implements ICartService{
	
	@Inject
	ICartDAO cartDAO;
	
	@Inject
	IBookDAO bookDAO;
	
	@Inject
	private ITypeDAO typeDAO;
	
	@Inject
	private IGenreDAO genreDAO;
	
	@Inject
	private IPublisherDAO publisherDAO;
	
	@Inject
	private IAuthorDAO authorDAO;

	@Override
	public List<CartModel> findAll() {
		List<CartModel> carts = cartDAO.findAll();
		for (CartModel cart: carts) {
			cart.setBookModel(bookDAO.findOne(cart.getBookId()));
		}
		return carts;
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
		List<CartModel> carts = cartDAO.findByUserIdAndOrdered(userId, odered);
		for (CartModel cart: carts) {
			BookModel bookModel = bookDAO.findOne(cart.getBookId());
			TypeModel typeModel = typeDAO.findOne(bookModel.getTypeId());
			GenreModel genreModel = genreDAO.findOne(bookModel.getGenreId());
			PublisherModel publisherModel = publisherDAO.findOne(bookModel.getPublisherId());
			AuthorModel authorModel = authorDAO.findOne(bookModel.getAuthorId());
			if (genreModel != null) bookModel.setGenreName(genreModel.getName());
			if (publisherModel != null) bookModel.setPublisherName(publisherModel.getName());
			if (typeModel != null) bookModel.setTypeName(typeModel.getName());
			if (authorModel!=null) bookModel.setAuthorName(authorModel.getName());
			cart.setBookModel(bookModel);
		}
		return carts;
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
		bookDAO.updateStocks(bookModel);
		cartModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		cartModel.setOrdered(0);
		Long id = cartDAO.save(cartModel);
		return cartDAO.findOne(id);
	}

	@Override
	public CartModel update(CartModel cartModel) {
		cartDAO.update(cartModel);
		return cartDAO.findOne(cartModel.getId());
	}

	@Override
	public void delete(Long id) {
		CartModel oldCart = cartDAO.findOne(id);
		if (oldCart.getOrdered()==0) {
			BookModel bookModel = bookDAO.findOne(oldCart.getBookId());
			bookModel.setStocks(bookModel.getStocks()+oldCart.getQuantity());
			bookDAO.updateStocks(bookModel);
		}
		cartDAO.delete(id);
	}

	@Override
	public CartModel findByUserIdAndBookIdAndUnordered(Long userId, Long bookId) {
		return cartDAO.findByUserIdAndBookIdAndUnordered(userId, bookId);
	}

	@Override
	public int getTotalItem(Long userId) {
		return cartDAO.getTotalItem(userId);
	}

	@Override
	public CartModel updateQuantity(CartModel cartModel) {
		CartModel oldCart = cartDAO.findOne(cartModel.getId());
		Long adjQuantity = oldCart.getQuantity() - cartModel.getQuantity();
		BookModel bookModel = bookDAO.findOne(cartModel.getBookId());
		bookModel.setStocks(bookModel.getStocks()+adjQuantity);
		bookDAO.updateStocks(bookModel);
		cartDAO.updateQuantity(cartModel);
		return cartDAO.findOne(cartModel.getId());
	}
	
	
}
