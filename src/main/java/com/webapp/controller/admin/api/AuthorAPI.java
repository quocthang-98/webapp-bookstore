package com.webapp.controller.admin.api;

import java.io.IOException;
import java.sql.Date;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webapp.model.AuthorModel;
import com.webapp.model.BookModel;
import com.webapp.model.UserModel;
import com.webapp.servicce.IAuthorService;
import com.webapp.servicce.IBookService;
import com.webapp.utils.HttpUtil;
import com.webapp.utils.SessionUtil;


@WebServlet(urlPatterns = {"/api-admin-author"})
public class AuthorAPI extends HttpServlet{
	
	@Inject
	private IAuthorService authorService;
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		AuthorModel authorModel = HttpUtil.of(req.getReader()).toModel(AuthorModel.class);
		authorModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUsername());
		authorModel = authorService.save(authorModel);
		objectMapper.writeValue(resp.getOutputStream(), authorModel);
	}
	
	@Override	
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		AuthorModel authorModel = HttpUtil.of(req.getReader()).toModel(AuthorModel.class);
		authorModel = authorService.update(authorModel);
		objectMapper.writeValue(resp.getOutputStream(), authorModel);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		AuthorModel authorModel = HttpUtil.of(req.getReader()).toModel(AuthorModel.class);
		authorService.delete(authorModel.getId());
		objectMapper.writeValue(resp.getOutputStream(), "");
	}
}
