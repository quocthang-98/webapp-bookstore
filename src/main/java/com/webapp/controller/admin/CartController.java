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
import com.webapp.model.CartModel;
import com.webapp.model.CommentModel;
import com.webapp.servicce.IAuthorService;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.ICartService;
import com.webapp.servicce.ICommentService;
import com.webapp.utils.FormUtil;
import com.webapp.validation.Validation;
	
@WebServlet(urlPatterns = {"/admin-cart"})
public class CartController extends HttpServlet{
	
	@Inject
	ICartService cartService;
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartModel cartModel = FormUtil.toModel(CartModel.class, request);
		cartModel.setResultList(cartService.findAll());
		String view = "";
		view = "/views/admin/cart/list.jsp";
		request.setAttribute(SystemConstant.CART, cartModel);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
