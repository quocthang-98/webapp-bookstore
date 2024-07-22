package com.webapp.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.webapp.model.PublisherModel;
import com.webapp.model.UserModel;
import com.webapp.service.IPublisherService;
import com.webapp.utils.HttpUtil;
import com.webapp.utils.SessionUtil;


@WebServlet(urlPatterns = {"/api-admin-publisher"})
public class PublisherAPI extends HttpServlet{
	
	@Inject
	private IPublisherService publisherService;
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		PublisherModel publisherModel = HttpUtil.of(req.getReader()).toModel(PublisherModel.class);
		publisherModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUsername());
		publisherModel = publisherService.save(publisherModel);
		objectMapper.writeValue(resp.getOutputStream(), publisherModel);
	}
	
	@Override	
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		PublisherModel publisherModel = HttpUtil.of(req.getReader()).toModel(PublisherModel.class);
		publisherModel = publisherService.update(publisherModel);
		objectMapper.writeValue(resp.getOutputStream(), publisherModel);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper objectMapper = new ObjectMapper();
		resp.setContentType("application/json");
		PublisherModel publisherModel = HttpUtil.of(req.getReader()).toModel(PublisherModel.class);
		publisherService.delete(publisherModel.getId());
		objectMapper.writeValue(resp.getOutputStream(), "");
	}
}
