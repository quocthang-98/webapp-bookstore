package com.webapp.controller.user;
		
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.functors.IfClosure;

import com.mysql.cj.x.protobuf.MysqlxCrud.Find;
import com.webapp.constant.SystemConstant;
import com.webapp.model.BookModel;
import com.webapp.model.CartModel;
import com.webapp.model.CommentModel;
import com.webapp.model.UserModel;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.ICartService;
import com.webapp.servicce.ICommentService;
import com.webapp.servicce.ITypeService;
import com.webapp.utils.FormUtil;
import com.webapp.utils.SessionUtil;
	
@WebServlet(urlPatterns = {"/user-bookdetail"})
public class BookDetailController extends HttpServlet{
	
	
	@Inject
	private IBookService bookService;
	
	@Inject
	private ICommentService commentService;
	
	@Inject
	private ICartService cartService;
	
	
		
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookModel bookModel = FormUtil.toModel(BookModel.class, request);
		String status;
		if (((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL"))==null) {
			status = "notLogin";
		} else {
			status = bookModel.getStatus();}
		bookModel = bookService.findOne(bookModel.getId());	
		bookModel.setStatus(status);
		request.setAttribute(SystemConstant.BOOK, bookModel);
		
		CommentModel commentModel = new CommentModel();
		commentModel.setResultList(commentService.findByBookId(bookModel.getId()));
		request.setAttribute(SystemConstant.COMMENT, commentModel);
		if (((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL"))!=null) {
		CartModel cartModel = cartService.findByUserIdAndBookId(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getId(), bookModel.getId());
		request.setAttribute(SystemConstant.CART, cartModel);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/user/bookdetail/detail.jsp");
		rd.forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
