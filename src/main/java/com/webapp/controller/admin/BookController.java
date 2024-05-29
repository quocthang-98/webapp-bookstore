package com.webapp.controller.admin;
		
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.constant.SystemConstant;
import com.webapp.dao.IAuthorDAO;
import com.webapp.dao.IPublisherDAO;
import com.webapp.model.AuthorModel;
import com.webapp.model.BookModel;
import com.webapp.model.GenreModel;
import com.webapp.model.PublisherModel;
import com.webapp.model.TypeModel;
import com.webapp.servicce.IAuthorService;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.IGenreService;
import com.webapp.servicce.IPublisherService;
import com.webapp.servicce.ITypeService;
import com.webapp.utils.FormUtil;
import com.webapp.validation.BookValidation;

import java.io.IOException;

import javax.enterprise.inject.Model;
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
	
	@Inject
	private IGenreService genreService;
	
	@Inject
	private IPublisherService publisherService;
	
	@Inject
	private IAuthorService authorService;
	
			
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TypeModel typeModel = new TypeModel();
		GenreModel genreModel = new GenreModel();
		PublisherModel publisherModel = new PublisherModel();
		AuthorModel authorModel = new AuthorModel();
		typeModel.setResultList(typeService.findAll());
		genreModel.setResultList(genreService.findAll());
		publisherModel.setResultList(publisherService.findAll());
		authorModel.setResultList(authorService.findAll());
		BookModel bookModel = FormUtil.toModel(BookModel.class, request);
		
		String view = "";
		if (bookModel.getType().equals(SystemConstant.LIST)) {
			view = "/views/admin/book/list.jsp";
			bookModel.setResultList(bookService.findByConditions(bookModel.getTypeId()));
			
		} else if (bookModel.getType().equals(SystemConstant.EDIT)){
			if (bookModel.getId()!=null) {
				bookModel = bookService.findOne(bookModel.getId());
			} else {
				
			}
			view = "/views/admin/book/edit.jsp";
		} else if (bookModel.getType().equals(SystemConstant.VALIDATE)) {
			bookModel.setResultList(bookService.findAll());
			if (BookValidation.validate(bookModel)) view = "/views/admin/book/validate.jsp";
			else view = "/views/admin/book/edit.jsp";
		}

		request.setAttribute(SystemConstant.TYPE, typeModel);
		request.setAttribute(SystemConstant.BOOK, bookModel);
		request.setAttribute(SystemConstant.GENRE, genreModel);
		request.setAttribute(SystemConstant.PUBLISHER, publisherModel);
		request.setAttribute(SystemConstant.AUTHOR, authorModel);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
