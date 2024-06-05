package com.webapp.dao.impl;

import java.util.List;

import com.webapp.dao.IOrderDAO;
import com.webapp.mapper.OrderMapper;
import com.webapp.model.OrderModel;

public class OrderDAO extends AbstractDAO<OrderModel> implements IOrderDAO {

	@Override
	public List<OrderModel> findAll() {
		String sql = "SELECT * FROM orders";
		return query(sql, new OrderMapper());
	}

	@Override
	public OrderModel findOne(Long id) {
		String sql = "SELECT * FROM orders WHERE id = ?";
		List<OrderModel> orders = query(sql, new OrderMapper(), id);
		return orders.isEmpty() ? null : orders.get(0);
	}

	@Override
	public List<OrderModel> findByUserId(Long userId) {
		String sql = "SELECT * FROM orders WHERE user_id = ?";
		return query(sql, new OrderMapper(), userId);
	}

	@Override
	public Long save(OrderModel orderModel) {
		String sql = "INSERT INTO orders (user_id, total_price) VALUE (?, ?, ?)";
		return insert(sql, orderModel.getUserId(), orderModel.getTotalPrice());
	}

}
