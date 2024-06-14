package com.webapp.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IOrderDAO;
import com.webapp.dao.ITypeDAO;
import com.webapp.model.OrderModel;
import com.webapp.model.TypeModel;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.IOrderService;
import com.webapp.servicce.ITypeService;

public class OrderService implements IOrderService{
	
	@Inject
	IOrderDAO orderDAO;
	
	@Override
	public List<OrderModel> findAll() {
		return orderDAO.findAll();
	}

	@Override
	public OrderModel findOne(Long id) {
		return orderDAO.findOne(id);
	}

	@Override
	public List<OrderModel> findByUserId(Long userId) {
		return orderDAO.findByUserId(userId);
	}

	@Override
	public OrderModel save(OrderModel orderModel) {
		orderModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long id = orderDAO.save(orderModel);
		return orderDAO.findOne(id);
	}
	
}
 
