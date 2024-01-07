package com.eml.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eml.RealDAO.LoginDao;
import com.eml.RealDAO.UserDao;
import com.eml.UserFom.LoginForm;
import com.eml.UserFom.UserForm;
@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException,IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("login-email");
		String Password = request.getParameter("login-password");
		
		LoginForm loginform = new LoginForm(username, Password);
		LoginDao userdao= new LoginDao();
			try {
				boolean isfound = userdao.loginUser(loginform);
				System.out.println(isfound);
				if(isfound == true) {
					HttpSession session=request.getSession();  
					session.setAttribute("uname", username);
					response.sendRedirect("index.jsp");
				}
				else {
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.include(request, response);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	

	}

}
