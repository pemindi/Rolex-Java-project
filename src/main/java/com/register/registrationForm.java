package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class registrationForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String nic = request.getParameter("nIC");
		String customer_fname = request.getParameter("fname");
		String customer_lname = request.getParameter("lname");
		String customer_No = request.getParameter("Tno");
		String customer_add = request.getParameter("add");
		String customer_email= request.getParameter("email");
		String password = request.getParameter("passs");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?useSSL=false","root","Pethmi092019");
			PreparedStatement pst = con.prepareStatement("insert into customer(nic,customer_fname,customer_lname,customer_No,customer_add,customer_email,password) values(?,?,?,?,?,?,?)");
					
			pst.setString(1, nic);
			pst.setString(2, customer_fname);
			pst.setString(3, customer_lname);
			pst.setString(4, customer_No);
			pst.setString(5, customer_add);
			pst.setString(6, customer_email);
			pst.setString(7, password);
			
			int rowCount = pst.executeUpdate();
			dispatcher =request.getRequestDispatcher("index1.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
				
				
			}else {
				request.setAttribute("status", "failed");

			}
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}

