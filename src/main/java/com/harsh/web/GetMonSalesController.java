package com.harsh.web;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.harsh.web.dao.MonSalesDao;
import com.harsh.web.model.MonSales;

/**
 * Servlet implementation class GetMonSalesController
 */
public class GetMonSalesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MonSalesDao dao = new MonSalesDao();
		ArrayList<MonSales> m1 = dao.getMonSales();
		
		request.setAttribute("Mon",m1);
		RequestDispatcher rd = request.getRequestDispatcher("showmonsales.jsp");
		rd.forward(request,response);
	}
}