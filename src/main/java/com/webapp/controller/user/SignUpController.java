package com.webapp.controller.user;
		
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.constant.SystemConstant;
import com.webapp.model.BookModel;
import com.webapp.model.GenreModel;
import com.webapp.model.TypeModel;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.IGenreService;
import com.webapp.servicce.ITypeService;
import com.webapp.utils.ConverterUtil;
import com.webapp.utils.FormUtil;
	
@WebServlet(urlPatterns = {"/signup"})
public class SignUpController extends HttpServlet{
	
		
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/signup/signup.jsp");
		rd.forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
