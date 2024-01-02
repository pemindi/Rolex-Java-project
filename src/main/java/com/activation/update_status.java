package com.activation;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateStatus")
public class update_status extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1><center>Registration Sucessfully</center><h1>");
		
		String A_ID = request.getParameter("UID");
		String Status = request.getParameter("Status");
	
		
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?useSSL=false","root","Pethmi092019");
			pst = con.prepareStatement("update activatingdetails set  Status=? where A_ID=?");
			
			
			
			pst.setString(1, Status);
			pst.setString(2, A_ID);
			
			
			pst.executeUpdate();
			response.sendRedirect("view_activeServices.jsp");
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
	}

}