package com.webapp.controller.user;
		
import java.io.IOException;
import java.util.Random;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webapp.constant.SystemConstant;
import com.webapp.model.UserModel;
import com.webapp.service.IUserService;
import com.webapp.utils.EmailUtil;
import com.webapp.utils.FormUtil;
import com.webapp.utils.SessionUtil;
import com.webapp.validation.Validation;
	
@WebServlet(urlPatterns = {"/signup"})
public class SignUpController extends HttpServlet{
	
	@Inject
	IUserService userService;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("email");
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserModel userModel = FormUtil.toModel(UserModel.class, request);
		
		String view = "";
		
		userModel.setResultList(userService.findAll());
		if (userModel.getType().equals(SystemConstant.DISPLAY)) {
			view = "/views/signup/signup.jsp";
		} else if (userModel.getType().equals(SystemConstant.VALIDATE)) {
			if (Validation.userValidate(userModel)) {
				Random rand = new Random();
				Integer code = 100000 + rand.nextInt(899999);
				SessionUtil.getInstance().putValue(request, "CODE", code);
				SessionUtil.getInstance().putValue(request, "USERSIGNUP", userModel);
				String host = resourceBundle.getString("host");
				String port = resourceBundle.getString("port");
				String user = resourceBundle.getString("user");
				String pass = resourceBundle.getString("pass");
				String subject = resourceBundle.getString("subject");
				
				String recipient = userModel.getEmail();
		        String content = "Input the following code to sign up: \n" + code.toString() ;
		        try {	
		        EmailUtil.sendEmail(host, port, user, pass, recipient, subject, content);
		        view = "/views/signup/sendemail.jsp";
		        } catch (Exception e) {
		        	userModel.setIsEmailNotOK(1);
		        	userModel.setIsEmailInvalid(1);
					view = "/views/signup/signup.jsp";
				}				
			} else {
				view = "/views/signup/signup.jsp";
			} 
		} else if (userModel.getType().equals(SystemConstant.CHECKEMAIL)){
			if (((Integer) SessionUtil.getInstance().getValue(request, "CODE")).equals(userModel.getCode())) {
				userModel = (UserModel) SessionUtil.getInstance().getValue(request, "USERSIGNUP");
				view = "/views/signup/signupAPI.jsp";
			} else {
				userModel.setMessageWrongCode(1);
				view = "/views/signup/sendemail.jsp";
			}
		} else {
			view = "/views/signup/signupsuccess.jsp";
		}
		
		request.setAttribute(SystemConstant.USER, userModel);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
