package com.harsh.web;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.harsh.web.dao.LoginDao;
import com.harsh.web.model.Login;

/**
 * Servlet implementation class GetLoginController
 */
public class GetLoginController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String lname=request.getParameter("lname");
		String lpass=request.getParameter("lpass");
		Boolean adminlog=Boolean.parseBoolean(request.getParameter("adminlog"));
		LoginDao dao = new LoginDao();
		ArrayList<Login> l1 = dao.getLogin(adminlog,lname,lpass);
		if(l1.size()==0) {
			request.setAttribute("alertMsg","Access Denied!");
			RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
			rd.forward(request,response);
		}
		else {
		request.setAttribute("log",l1);
		//System.out.println(l1);
			if(l1.get(0).getLid()) {
			RequestDispatcher rd= request.getRequestDispatcher("custLogin.jsp");
			rd.forward(request,response);
			}else {
				RequestDispatcher rd= request.getRequestDispatcher("showLogin.jsp");
				rd.forward(request,response);
			}
			
		}
	}
}