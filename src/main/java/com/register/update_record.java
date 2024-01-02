package com.register;


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

@WebServlet("/UpdateRecordServlet")
public class update_record extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1><center>Registration Sucessfully</center><h1>");
		
		String idcustomer = request.getParameter("Uid");
		String nic = request.getParameter("nIC");
		String customer_fname = request.getParameter("fname");
		String customer_lname = request.getParameter("lname");
		String customer_No = request.getParameter("Tno");
		String customer_add = request.getParameter("add");
		String customer_email= request.getParameter("email");
		String password = request.getParameter("passs");
		
		Connection con;
		PreparedStatement pst;
		ResultSet resultSet;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?useSSL=false","root","Pethmi092019");
			pst = con.prepareStatement("update customer set nic=?, customer_fname=?, customer_lname=?, customer_No=?, customer_add=?,customer_email=?, password=? where idcustomer=?");
			pst.setString(1, nic);
			pst.setString(2, customer_fname);
			pst.setString(3, customer_lname );
			pst.setString(4, customer_No);
			pst.setString(5, customer_add);
			pst.setString(6, customer_email);
			pst.setString(7, password);
			pst.setString(8, idcustomer);
			pst.executeUpdate();
			response.sendRedirect("adminView.jsp");
			
			
		}catch(Exception e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
	}

}