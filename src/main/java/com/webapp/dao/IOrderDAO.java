package com.webapp.dao;

import java.util.List;

import com.webapp.model.OrderModel;

public interface IOrderDAO {
	List<OrderModel> findAll();
	OrderModel findOne(Long id);
	List<OrderModel> findByUserId(Long userId);
	Long save(OrderModel orderModel);
}
