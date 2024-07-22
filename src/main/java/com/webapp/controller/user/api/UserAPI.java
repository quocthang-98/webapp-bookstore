package com.webapp.controller.user.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webapp.model.UserModel;
import com.webapp.service.IUserService;
import com.webapp.utils.HttpUtil;

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
