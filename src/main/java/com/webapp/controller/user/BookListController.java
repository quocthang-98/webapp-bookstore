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
import com.webapp.service.IBookService;
import com.webapp.service.IGenreService;
import com.webapp.service.ITypeService;
import com.webapp.utils.ConverterUtil;
import com.webapp.utils.FormUtil;
	
@WebServlet(urlPatterns = {"/user-booklist"})
public class BookListController extends HttpServlet{
	
	@Inject
	private ITypeService typeService;
		
	@Inject
	private IBookService bookService;
	
	@Inject
	private IGenreService genreService;
		
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TypeModel typeModel = new TypeModel();
		typeModel.setResultList(typeService.findAll());
		GenreModel genreModel = new GenreModel();
		genreModel.setResultList(genreService.findAll());
		
		BookModel model = FormUtil.toModel(BookModel.class, request);	
		model.setTypeListString(request.getParameter("typeList"));
		model.setGenreListString(request.getParameter("genreList"));
		model.setTypeList(ConverterUtil.converter(model.getTypeListString()));	
		model.setGenreList(ConverterUtil.converter(model.getGenreListString()));
		
		Integer offset = (model.getPage() - 1) * model.getLimit();	
		
		if (model.getKeyWord()!=null && !model.getKeyWord().equals("")) {
			model.setTotalItem(bookService.getTotalItem(model.getKeyWord()));
			model.setTotalPages((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
			model.setResultList(bookService.findByKeyWord(offset, model.getLimit(), model.getKeyWord()));
		} else {
			model.setTotalItem(bookService.getTotalItem(model.getTypeList(), model.getGenreList()));
			model.setTotalPages((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
			model.setResultList(bookService.findAll(offset, model.getLimit(), model.getTypeList(), model.getGenreList(), model.getSortBy()));
		}
		
		
		request.setAttribute(SystemConstant.BOOK, model);
		request.setAttribute(SystemConstant.TYPE, typeModel);
		request.setAttribute(SystemConstant.GENRE, genreModel);
		RequestDispatcher rd = request.getRequestDispatcher("/views/user/listofbook/list.jsp");
		rd.forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
