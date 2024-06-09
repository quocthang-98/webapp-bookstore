package com.webapp.controller.user.api;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webapp.model.CartModel;
import com.webapp.model.OrderModel;
import com.webapp.model.UserModel;
import com.webapp.servicce.ICartService;
import com.webapp.servicce.IOrderService;
import com.webapp.utils.HttpUtil;
import com.webapp.utils.SessionUtil;

@WebServlet(urlPatterns = {"/api-user-order"})
public class OrderAPI extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Inject
	IOrderService orderService;
	
	@Inject
	ICartService cartService;
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		OrderModel orderModel = HttpUtil.of(req.getReader()).toModel(OrderModel.class);
		UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
		orderModel.setCreatedBy(userModel.getUsername());
		orderModel.setUserId(userModel.getId());
		orderModel = orderService.save(orderModel);
		List<CartModel> carts = cartService.findByUserIdAndOrdered(userModel.getId(), 0);
		for (CartModel cart:carts) {
			cart.setOrderId(orderModel.getId());
			cart.setOrdered(1);
			cartService.update(cart);
		}
		objectMapper.writeValue(resp.getOutputStream(), orderModel);
	}
}
