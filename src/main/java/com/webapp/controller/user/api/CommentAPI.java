package com.webapp.controller.user.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webapp.model.CommentModel;
import com.webapp.model.UserModel;
import com.webapp.servicce.ICommentService;
import com.webapp.utils.HttpUtil;
import com.webapp.utils.SessionUtil;

@WebServlet(urlPatterns = {"/api-user-comment"})
public class CommentAPI extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	@Inject
	ICommentService commentService;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		CommentModel commentModel = HttpUtil.of(req.getReader()).toModel(CommentModel.class);
		commentModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUsername());
		commentModel.setUserId(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getId());
		commentModel = commentService.save(commentModel);
		objectMapper.writeValue(resp.getOutputStream(), commentModel);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		CommentModel commentModel = HttpUtil.of(req.getReader()).toModel(CommentModel.class);
		commentModel = commentService.update(commentModel);
		objectMapper.writeValue(resp.getOutputStream(), commentModel);
		
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		CommentModel commentModel = HttpUtil.of(req.getReader()).toModel(CommentModel.class);
		commentService.deleteOne(commentModel.getId());
		objectMapper.writeValue(resp.getOutputStream(), "");
	}
	
}
