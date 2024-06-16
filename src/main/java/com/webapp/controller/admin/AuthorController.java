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
import com.webapp.model.AuthorModel;
import com.webapp.servicce.IAuthorService;
import com.webapp.utils.FormUtil;
import com.webapp.validation.Validation;

@WebServlet(urlPatterns = { "/admin-author" })
public class AuthorController extends HttpServlet {

	@Inject
	private IAuthorService authorService;

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AuthorModel authorModel = FormUtil.toModel(AuthorModel.class, request);
		authorModel.setResultList(authorService.findAll());
		String view = "";

		if (authorModel.getType().equals(SystemConstant.LIST)) {
			view = "/views/admin/author/list.jsp";
			authorModel.setResultList(authorService.findAll());

		} else if (authorModel.getType().equals(SystemConstant.EDIT)) {
			if (authorModel.getId() != null) {
				authorModel = authorService.findOne(authorModel.getId());
			} else {

			}
			view = "/views/admin/author/edit.jsp";
		} else if (authorModel.getType().equals(SystemConstant.VALIDATE)) {
			authorModel.setResultList(authorService.findAll());
			if (Validation.authorValidate(authorModel))
				view = "/views/admin/author/validate.jsp";
			else
				view = "/views/admin/author/edit.jsp";
		}

		request.setAttribute(SystemConstant.AUTHOR, authorModel);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
