package com.webapp.controller.user;
		
import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.constant.SystemConstant;
import com.webapp.model.BookModel;
import com.webapp.model.UserModel;
import com.webapp.service.IBookService;
import com.webapp.service.ICartService;
import com.webapp.service.IUserService;
import com.webapp.utils.FormUtil;
import com.webapp.utils.SessionUtil;
	
@WebServlet(urlPatterns = {"/user-home", "/login", "/logout"})
public class HomeController extends HttpServlet{
	
	@Inject
	private IBookService bookService;
	
	@Inject
	private IUserService userService;
	
	@Inject
	private ICartService cartService;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
		
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		BookModel bookModel = new BookModel();
		bookModel.setResultList(bookService.findBookSuggestion());
		request.setAttribute(SystemConstant.BOOK, bookModel);
		if (action!= null && action.equals("login")) {
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if (message!=null && alert!=null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		} else if (action!= null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(request, "USERMODEL");
			SessionUtil.getInstance().removeValue(request, "CARTNUMBER");
			response.sendRedirect(request.getContextPath() + "/user-home");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/user/home.jsp");
			rd.forward(request, response);
		}
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action!= null && action.equals("login")) {
			UserModel userModel = FormUtil.toModel(UserModel.class, request);
			userModel = userService.findByUsernameAndPassword(userModel.getUsername(), userModel.getPassword());
			if (userModel != null) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", userModel);
				Integer cartNumber = new Integer(cartService.getTotalItem(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getId()));
				SessionUtil.getInstance().putValue(request, "CARTNUMBER", cartNumber);
				if (userModel.getRoleModel().getName().equals("User")) {
					response.sendRedirect(request.getContextPath() + "/user-home");
				} else if (userModel.getRoleModel().getName().equals("Admin")){
					response.sendRedirect(request.getContextPath() + "/admin-home");
				}
			} else {
				response.sendRedirect(request.getContextPath() + "/login?action=login&message=login_invalid&alert=danger");
			}
		}
	}
}	
