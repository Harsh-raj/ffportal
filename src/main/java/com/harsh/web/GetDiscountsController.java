package com.harsh.web;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.harsh.web.dao.DiscountsDao;
import com.harsh.web.model.Discounts;
import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class GetDiscountsController
 */
public class GetDiscountsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DiscountsDao dao = new DiscountsDao();

		ArrayList<Discounts> s1 = dao.getDiscounts();
		
		request.setAttribute("Discount",s1);
		RequestDispatcher rd= request.getRequestDispatcher("showDiscounts.jsp");
		rd.forward(request,response);
	}

}