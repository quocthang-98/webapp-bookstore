package com.webapp.controller.user;
		
import java.io.IOException;
import java.util.List;

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
import com.webapp.servicce.ILikeBookService;
import com.webapp.servicce.ILikeCommentService;
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
	
	@Inject
	private ILikeBookService likeBookService;
	
	@Inject
	private ILikeCommentService likeCommentService;
	
		
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
		if (((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL"))!=null) {
		bookModel.setLikeBookModel(likeBookService.findByUserIdAndBookId(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getId(), bookModel.getId()));
		}
		bookModel.setLikeNumber(likeBookService.getTotalLikeByBookId(bookModel.getId()));
		request.setAttribute(SystemConstant.BOOK, bookModel);
		
		BookModel bookModel2 = new BookModel();
		bookModel2.setResultList(bookService.findBookDetailSuggestion(bookModel.getGenreId()));
		request.setAttribute(SystemConstant.BOOK2, bookModel2);

		CommentModel commentModel = new CommentModel();
		List<CommentModel> comments = commentService.findByBookId(bookModel.getId());
		for (CommentModel comment:comments) {
			if (((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL"))!=null) {
				comment.setLikeCommentModel(likeCommentService.findByUserIdAndCommentId(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getId(), comment.getId()));
			}
		}
		commentModel.setResultList(comments);
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
