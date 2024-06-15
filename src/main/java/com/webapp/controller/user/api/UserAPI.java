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
import com.webapp.servicce.IUserService;
import com.webapp.utils.HttpUtil;
import com.webapp.utils.SessionUtil;

@WebServlet(urlPatterns = {"/api-user"})
public class UserAPI extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Inject
	IUserService userService;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		UserModel userModel = HttpUtil.of(req.getReader()).toModel(UserModel.class);
		userModel.setCreatedBy(userModel.getUsername());
		userModel = userService.save(userModel);
		objectMapper.writeValue(resp.getOutputStream(), userModel);
	}
}
