package com.webapp.controller.user.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webapp.model.CartModel;
import com.webapp.model.UserModel;
import com.webapp.servicce.ICartService;
import com.webapp.utils.HttpUtil;
import com.webapp.utils.SessionUtil;

@WebServlet(urlPatterns = {"/api-user-cart"})
public class CartAPI extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Inject
	ICartService cartService;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		CartModel cartModel = HttpUtil.of(req.getReader()).toModel(CartModel.class);
		cartModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUsername());
		cartModel.setUserId(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getId());
		cartModel = cartService.save(cartModel);
		objectMapper.writeValue(resp.getOutputStream(), cartModel);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		CartModel cartModel = HttpUtil.of(req.getReader()).toModel(CartModel.class);
		cartModel = cartService.update(cartModel);
		objectMapper.writeValue(resp.getOutputStream(), cartModel);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		CartModel cartModel = HttpUtil.of(req.getReader()).toModel(CartModel.class);
		cartService.delete(cartModel.getId());
		objectMapper.writeValue(resp.getOutputStream(), "");
	}
	
}
