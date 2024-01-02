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


@WebServlet("/login")
public class loginForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customer_No = request.getParameter("uid");
		String password = request.getParameter("passs");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher =null;
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?useSSL=false","root","Pethmi092019");
		PreparedStatement pst = con.prepareStatement("select * from customer where customer_No=? and password=?");

		pst.setString(1,customer_No);
		pst.setString(2,password);
		
		
		ResultSet resultSet=pst.executeQuery();
		if(resultSet.next()){
			session.setAttribute("name", resultSet.getString("customer_No"));
			dispatcher = request.getRequestDispatcher("index.jsp");
		}else {
			
			request.setAttribute("status","failed");
			dispatcher=request.getRequestDispatcher("loginForm.jsp");
		}
		
		 dispatcher.forward(request, response);
		 
		}catch (Exception e) {
		  e.printStackTrace();
	     }
	}

}
