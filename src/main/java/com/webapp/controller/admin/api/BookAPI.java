package com.webapp.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webapp.model.BookModel;
import com.webapp.model.UserModel;
import com.webapp.servicce.IBookService;
import com.webapp.utils.HttpUtil;
import com.webapp.utils.SessionUtil;


@WebServlet(urlPatterns = {"/api-admin-book"})
public class BookAPI extends HttpServlet{
	
	@Inject
	private IBookService bookService;
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		BookModel bookModel = HttpUtil.of(req.getReader()).toModel(BookModel.class);
		bookModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUsername());
		bookModel = bookService.save(bookModel);
		objectMapper.writeValue(resp.getOutputStream(), bookModel);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		BookModel bookModel = HttpUtil.of(req.getReader()).toModel(BookModel.class);
		bookModel = bookService.update(bookModel);
		objectMapper.writeValue(resp.getOutputStream(), bookModel);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		BookModel bookModel = HttpUtil.of(req.getReader()).toModel(BookModel.class);
		bookService.delete(bookModel.getIds());
		objectMapper.writeValue(resp.getOutputStream(), "");
	}
}
