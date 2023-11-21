package com.harsh.web;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import com.harsh.web.dao.StocksDao;
import com.harsh.web.model.Stocks;
/**
 * Servlet implementation class GetStocksController
 */
public class GetStocksController extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				StocksDao dao = new StocksDao();
				ArrayList<Stocks> s1 = dao.getStaff();
				
				request.setAttribute("Stocks",s1);
				RequestDispatcher rd= request.getRequestDispatcher("showstocks.jsp");
				rd.forward(request,response);
	}
}