package com.harsh.web;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.harsh.web.dao.StaffDao;
import com.harsh.web.model.Staff;
import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class GetStaffController
 */
public class GetStaffController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        StaffDao dao = new StaffDao();
        ArrayList<Staff> s1 = dao.getStaff();
        
        request.setAttribute("Staff",s1);
        RequestDispatcher rd= request.getRequestDispatcher("showstaff.jsp");
        rd.forward(request,response);
    }
}