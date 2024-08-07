package com.webapp.dao.impl;

import java.util.List;

import com.webapp.dao.ICartDAO;
import com.webapp.mapper.CartMapper;
import com.webapp.model.CartModel;

public class CartDAO extends AbstractDAO<CartModel> implements ICartDAO {

	@Override
	public List<CartModel> findAll() {
		String sql = "SELECT * FROM cart";
		return query(sql, new CartMapper());
	}

	@Override
	public List<CartModel> findByUserId(Long userId) {
		String sql = "SELECT * FROM cart WHERE user_id = ?";
		return query(sql, new CartMapper(), userId);
	}

	@Override
	public List<CartModel> findByUserIdAndOrdered(Long userId, Integer ordered) {
		String sql = "SELECT * FROM cart WHERE user_id = ? AND ordered = ?";
		return query(sql, new CartMapper(), userId, ordered);
	}

	@Override
	public List<CartModel> findByBookId(Long bookId) {
		String sql = "SELECT * FROM cart WHERE book_id = ?";
		return query(sql, new CartMapper(), bookId);
	}

	@Override
	public CartModel findOne(Long id) {
		String sql = "SELECT * FROM cart WHERE id = ?";
		List<CartModel> carts = query(sql, new CartMapper(), id);
		return carts.isEmpty() ? null : carts.get(0);
	}

	@Override
	public Long save(CartModel cartModel) {
		String sql = "INSERT INTO cart (user_id, book_id, quantity, order_id, ordered, created_by, date_created) VALUE(?, ?, ?, ?, ?, ?, ?)";
		return insert(sql, cartModel.getUserId(), cartModel.getBookId(), cartModel.getQuantity(), cartModel.getOrderId(), cartModel.getOrdered(), cartModel.getCreatedBy(), cartModel.getCreatedDate());
	}

	@Override
	public void update(CartModel cartModel) {
		String sql = "UPDATE cart SET quantity = ?, order_id = ?, ordered = ? WHERE id = ?";
		update(sql, cartModel.getQuantity(), cartModel.getOrderId(), cartModel.getOrdered(), cartModel.getId());
	}
	
	

	@Override
	public void delete(Long id) {
		String sql = "DELETE FROM cart WHERE id = ?";
		update(sql, id);
	}

	@Override
	public CartModel findByUserIdAndBookIdAndUnordered(Long userId, Long bookId) {
		String sql = "SELECT * FROM cart WHERE user_id = ? AND book_id = ? AND ordered = 0";
		List<CartModel> carts = query(sql, new CartMapper(), userId, bookId);
		return carts.isEmpty() ? null : carts.get(0);
	}

	@Override
	public int getTotalItem(Long userId) {
		String sql = "SELECT count(DISTINCT(book_id)) FROM cart WHERE user_id = ? AND ordered = 0";
		return count(sql, userId);
	}

	@Override
	public void updateQuantity(CartModel cartModel) {
		String sql = "UPDATE cart SET quantity = ? WHERE id = ?";
		update(sql, cartModel.getQuantity(), cartModel.getId());
		
	}


}
