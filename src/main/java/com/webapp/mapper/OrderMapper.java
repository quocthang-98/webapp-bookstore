package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.OrderModel;

public class OrderMapper implements RowMapper<OrderModel> {

	@Override
	public OrderModel mapRow(ResultSet resultSet) {
		try {
			OrderModel orderModel = new OrderModel();
			orderModel.setId(resultSet.getLong("id"));
			orderModel.setUserId(resultSet.getLong("user_id"));
			orderModel.setTotalPrice(resultSet.getDouble("total_price"));
			orderModel.setCreatedBy(resultSet.getString("created_by"));
			orderModel.setCreatedDate(resultSet.getTimestamp("date_created"));
			return orderModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
