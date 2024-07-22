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
import com.webapp.model.CommentModel;
import com.webapp.service.ICommentService;
import com.webapp.utils.FormUtil;
	
@WebServlet(urlPatterns = {"/admin-comment"})
public class CommentController extends HttpServlet{
	
	@Inject
	ICommentService commentService;
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommentModel commentModel = FormUtil.toModel(CommentModel.class, request);
		commentModel.setResultList(commentService.findAll());
		String view = "";
		view = "/views/admin/comment/list.jsp";
		request.setAttribute(SystemConstant.COMMENT, commentModel);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
