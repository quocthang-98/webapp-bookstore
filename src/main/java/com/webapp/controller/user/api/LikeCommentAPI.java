package com.webapp.controller.user.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webapp.model.LikeCommentModel;
import com.webapp.model.UserModel;
import com.webapp.service.ILikeCommentService;
import com.webapp.utils.HttpUtil;
import com.webapp.utils.SessionUtil;

@WebServlet(urlPatterns = {"/api-user-likecomment"})
public class LikeCommentAPI extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Inject
	ILikeCommentService likeCommentService;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		LikeCommentModel likeCommentModel = HttpUtil.of(req.getReader()).toModel(LikeCommentModel.class);
		likeCommentModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUsername());
		likeCommentModel.setUserId(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getId());
		likeCommentModel = likeCommentService.save(likeCommentModel);
		objectMapper.writeValue(resp.getOutputStream(), likeCommentModel);
	}
	

	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		LikeCommentModel likeCommentModel = HttpUtil.of(req.getReader()).toModel(LikeCommentModel.class);
		likeCommentModel.setUserId(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getId());
		likeCommentService.deleteByUserIdAndCommentId(likeCommentModel.getUserId(), likeCommentModel.getCommentId());
		objectMapper.writeValue(resp.getOutputStream(), "");
	}
	
}
