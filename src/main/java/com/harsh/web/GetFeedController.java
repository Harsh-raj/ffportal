package com.harsh.web;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.harsh.web.dao.FeedDao;
import com.harsh.web.model.Feed;

/**
 * Servlet implementation class GetFeedController
 */
public class GetFeedController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				FeedDao dao = new FeedDao();
				ArrayList<Feed> m1 = dao.getFeed();
				request.setAttribute("feed",m1);
				RequestDispatcher rd= request.getRequestDispatcher("feedback.jsp");
				rd.forward(request,response);
	}
}