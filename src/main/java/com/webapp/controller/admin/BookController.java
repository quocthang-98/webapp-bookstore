package com.webapp.controller.admin;
		
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.constant.SystemConstant;
import com.webapp.model.BookModel;
import com.webapp.model.TypeModel;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.ITypeService;
import com.webapp.utils.FormUtil;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
	
@WebServlet(urlPatterns = {"/admin-book"})
public class BookController extends HttpServlet{
	
	@Inject
	private IBookService bookService;
	
	@Inject
	private ITypeService typeService;
	
		
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TypeModel typeModel = new TypeModel();
		typeModel.setResultList(typeService.findAll());
		BookModel bookModel = FormUtil.toModel(BookModel.class, request);
		bookModel.setResultList(bookService.findByConditions(bookModel.getTypeId()));
		request.setAttribute(SystemConstant.TYPE, typeModel);
		request.setAttribute(SystemConstant.BOOK, bookModel);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/book/list.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
