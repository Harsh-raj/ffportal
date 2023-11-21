package com.harsh.web;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.harsh.web.dao.MenuItemDao;
import com.harsh.web.model.MenuItem;

/**
 * Servlet implementation class GetMenuItemController
 */

public class GetMenuItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MenuItemDao dao = new MenuItemDao();
		ArrayList<MenuItem> m1 = dao.getMenuItem();
		
		request.setAttribute("menu",m1);
		RequestDispatcher rd= request.getRequestDispatcher("MenuItem.jsp");
		rd.forward(request,response);
	}
}