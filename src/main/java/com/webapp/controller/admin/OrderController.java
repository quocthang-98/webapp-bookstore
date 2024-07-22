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
import com.webapp.model.OrderModel;
import com.webapp.service.IOrderService;
import com.webapp.utils.FormUtil;
	
@WebServlet(urlPatterns = {"/admin-order"})
public class OrderController extends HttpServlet{
	
	@Inject
	IOrderService orderService;
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderModel orderModel = FormUtil.toModel(OrderModel.class, request);
		orderModel.setResultList(orderService.findAll());
		String view = "";
		view = "/views/admin/order/list.jsp";
		request.setAttribute(SystemConstant.ORDER, orderModel);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}	
