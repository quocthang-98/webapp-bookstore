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
import com.webapp.model.CartModel;
import com.webapp.model.UserModel;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.ICartService;
import com.webapp.servicce.ITypeService;
import com.webapp.service.impl.CartService;
import com.webapp.utils.SessionUtil;

@WebServlet(urlPatterns = {"/user-cart"})
public class CartController extends HttpServlet{
	
	@Inject
	ICartService cartService;
		
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartModel cartModel = new CartModel();
		cartModel.setResultList(cartService.findByUserId(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getId()));
		cartModel.setTotalPrice();
		request.setAttribute(SystemConstant.CART, cartModel);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/user/cart/cart.jsp");
		rd.forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}
