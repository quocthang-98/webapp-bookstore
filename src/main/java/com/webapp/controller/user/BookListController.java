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
import com.webapp.model.TypeModel;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.ITypeService;
import com.webapp.utils.FormUtil;
	
@WebServlet(urlPatterns = {"/user-booklist"})
public class BookListController extends HttpServlet{
	
	@Inject
	private ITypeService typeService;
		
	@Inject
	private IBookService bookService;
		
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TypeModel typeModel = new TypeModel();
		typeModel.setResultList(typeService.findAll());
		BookModel model = FormUtil.toModel(BookModel.class, request);
		Integer offset = (model.getPage() - 1) * model.getLimit();		
		model.setTotalItem(bookService.getTotalItem());
		model.setTotalPages((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		model.setResultList(bookService.findAll(offset, model.getLimit()));
		request.setAttribute(SystemConstant.BOOK, model);
		RequestDispatcher rd = request.getRequestDispatcher("/views/user/listofbook/list.jsp");
		rd.forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
