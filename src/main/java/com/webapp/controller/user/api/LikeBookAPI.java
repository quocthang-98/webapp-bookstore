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
import com.webapp.model.LikeBookModel;
import com.webapp.model.UserModel;
import com.webapp.servicce.ICartService;
import com.webapp.servicce.ILikeBookService;
import com.webapp.utils.HttpUtil;
import com.webapp.utils.SessionUtil;

@WebServlet(urlPatterns = {"/api-user-likebook"})
public class LikeBookAPI extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Inject
	ILikeBookService likeBookService;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		LikeBookModel likeBookModel = HttpUtil.of(req.getReader()).toModel(LikeBookModel.class);
		likeBookModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUsername());
		likeBookModel.setUserId(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getId());
		likeBookModel = likeBookService.save(likeBookModel);
		objectMapper.writeValue(resp.getOutputStream(), likeBookModel);
	}
	
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		LikeBookModel likeBookModel = HttpUtil.of(req.getReader()).toModel(LikeBookModel.class);
		likeBookService.deleteByUserIdAndBookId(likeBookModel.getUserId(), likeBookModel.getBookId());
		objectMapper.writeValue(resp.getOutputStream(), "");
	}
	
}
