package com.webapp.controller.user;
		
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.servicce.IBookService;
import com.webapp.servicce.ITypeService;
	
@WebServlet(urlPatterns = {"/user-booklist"})
public class BookListController extends HttpServlet{
	
	@Inject
	private ITypeService typeService;
	
	@Inject
	private IBookService bookService;
		
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/user/listofbook/list.jsp");
		rd.forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	