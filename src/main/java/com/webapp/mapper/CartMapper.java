package com.webapp.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.webapp.model.CartModel;
import com.webapp.model.TypeModel;

public class CartMapper implements RowMapper<CartModel> {

	@Override
	public CartModel mapRow(ResultSet resultSet) {
		try {
			CartModel cartModel = new CartModel();
			cartModel.setId(resultSet.getLong("id"));
			cartModel.setUserId(resultSet.getLong("user_id"));
			cartModel.setBookId(resultSet.getLong("book_id"));
			cartModel.setQuantity(resultSet.getLong("quantity"));
			cartModel.setOrderId(resultSet.getLong("order_id"));
			cartModel.setOrdered(resultSet.getInt("ordered"));
			cartModel.setCreatedBy(resultSet.getString("created_by"));
			cartModel.setCreatedDate(resultSet.getTimestamp("date_created"));
			return cartModel;
		} catch (SQLException e) {
			return null;
		}
	}

}
