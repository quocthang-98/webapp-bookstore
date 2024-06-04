package com.webapp.dao;

import java.util.List;

import com.webapp.model.CartModel;

public interface ICartDAO {
	List<CartModel> findAll();
	List<CartModel> findByUserId(Long userId);
	List<CartModel> findByUserIdAndOrdered(Long userId, Integer odered);
	List<CartModel> findByBookId(Long bookId);
	CartModel findOne(Long id);
	Long save(CartModel cartModel);
	void update(CartModel cartModel);
	void delete(Long id);
}
