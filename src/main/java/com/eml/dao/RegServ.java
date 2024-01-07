package com.eml.dao;

import java.io.IOException;

import com.eml.RealDAO.UserDao;
import com.eml.UserFom.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegServ
 */
@WebServlet("/RegServ")
public class RegServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("login-email");
		String Password = request.getParameter("login-password");
		String Hint = request.getParameter("login-hint");
		
		UserForm userform = new UserForm(username, Password, Hint);
		UserDao userdao= new UserDao();
		boolean isSaved = userdao.save(userform);
		if(isSaved) {
			out.println("successfull");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}
		else {
			out.println("not successfull");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
		}
		

	}

}
