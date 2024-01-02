package com.activation;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/form")
public class form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String F_Name = request.getParameter("F_Name");
		String L_Name = request.getParameter("L_Name");
		String NIC = request.getParameter("NIC");
		String Contact = request.getParameter("Contact");
		String Address = request.getParameter("Address");
		String ActivationType = request.getParameter("ActivationType");
		String ServiceType = request.getParameter("ServiceType");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?useSSL=false","root","Pethmi092019");
			PreparedStatement pst = con.prepareStatement("insert into activatingdetails(F_Name,L_Name,NIC,Contact,Address,ActivationType,ServiceType,Status) values(?,?,?,?,?,?,?,'Activated')");
			
			pst.setString(1, F_Name);
			pst.setString(2, L_Name);
			pst.setString(3, NIC);
			pst.setString(4, Contact);
			pst.setString(5, Address);
			pst.setString(6, ActivationType);
			pst.setString(7, ServiceType);
			
			int rowCount = pst.executeUpdate();
			dispatcher =request.getRequestDispatcher("packages.jsp");
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
			