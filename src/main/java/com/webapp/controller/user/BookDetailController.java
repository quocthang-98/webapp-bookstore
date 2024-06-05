package com.webapp.controller.user;
		
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxCrud.Find;
import com.webapp.constant.SystemConstant;
import com.webapp.model.BookModel;
import com.webapp.model.CommentModel;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.ICommentService;
import com.webapp.servicce.ITypeService;
import com.webapp.utils.FormUtil;
	
@WebServlet(urlPatterns = {"/user-bookdetail"})
public class BookDetailController extends HttpServlet{
	
	
	@Inject
	private IBookService bookService;
	
	@Inject
	private ICommentService commentService;
	
	
		
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookModel bookModel = FormUtil.toModel(BookModel.class, request);		
		bookModel = bookService.findOne(bookModel.getId());
		request.setAttribute(SystemConstant.BOOK, bookModel);
		
		CommentModel commentModel = new CommentModel();
		commentModel.setResultList(commentService.findByBookId(bookModel.getId()));
		request.setAttribute(SystemConstant.COMMENT, commentModel);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/user/bookdetail/detail.jsp");
		rd.forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
