package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin_login")
public class admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String admin_fname = request.getParameter("uid");
		String admin_pass = request.getParameter("passs");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher =null;
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?useSSL=false","root","Pethmi092019");
		PreparedStatement pst = con.prepareStatement("select * from admin where admin_fname=? and admin_pass=?");

		pst.setString(1,admin_fname);
		pst.setString(2,admin_pass);
		
		
		ResultSet resultSet=pst.executeQuery();
		if(resultSet.next()){
			session.setAttribute("name", resultSet.getString("admin_fname"));
			dispatcher = request.getRequestDispatcher("adminView.jsp");
		}else {
			
			request.setAttribute("status","failed");
			dispatcher=request.getRequestDispatcher("admin_login.jsp");
		}
		
		 dispatcher.forward(request, response);
		 
		}catch (Exception e) {
		  e.printStackTrace();
	     }
	}

}