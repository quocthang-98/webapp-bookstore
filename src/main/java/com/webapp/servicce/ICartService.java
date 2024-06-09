package com.webapp.servicce;

import java.util.List;

import com.webapp.model.BookModel;
import com.webapp.model.CartModel;

public interface ICartService {
	List<CartModel> findAll();
	List<CartModel> findByUserId(Long userId);
	List<CartModel> findByUserIdAndOrdered(Long userId, Integer odered);
	List<CartModel> findByBookId(Long bookId);
	CartModel findOne(Long id);
	CartModel save(CartModel cartModel);
	CartModel update(CartModel cartModel);
	CartModel findByUserIdAndBookId(Long userId, Long bookId);
	void delete(Long id);
}
