package com.webapp.service;

import java.util.List;

import com.webapp.model.OrderModel;

public interface IOrderService {
	List<OrderModel> findAll();
	OrderModel findOne(Long id);
	List<OrderModel> findByUserId(Long userId);
	OrderModel save(OrderModel orderModel);
}
