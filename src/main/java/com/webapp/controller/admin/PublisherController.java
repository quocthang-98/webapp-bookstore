package com.webapp.controller.admin;
		
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.constant.SystemConstant;
import com.webapp.model.PublisherModel;
import com.webapp.servicce.IPublisherService;
import com.webapp.utils.FormUtil;
import com.webapp.validation.Validation;
	
@WebServlet(urlPatterns = {"/admin-publisher"})
public class PublisherController extends HttpServlet{

	@Inject
	private IPublisherService publisherService;

	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PublisherModel publisherModel = FormUtil.toModel(PublisherModel.class, request);

		String view = "";
		
		if (publisherModel.getType().equals(SystemConstant.LIST)) {
			view = "/views/admin/publisher/list.jsp";
			publisherModel.setResultList(publisherService.findAll());
			
		} else if (publisherModel.getType().equals(SystemConstant.EDIT)){
			if (publisherModel.getId()!=null) {
				publisherModel = publisherService.findOne(publisherModel.getId());
			} else {
				
			}
			view = "/views/admin/publisher/edit.jsp";
		} else if (publisherModel.getType().equals(SystemConstant.VALIDATE)) {
			publisherModel.setResultList(publisherService.findAll());
			if (Validation.publisherValidate(publisherModel)) view = "/views/admin/publisher/validate.jsp";
			else view = "/views/admin/publisher/edit.jsp";
		}

		request.setAttribute(SystemConstant.PUBLISHER, publisherModel);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
