package com.support;

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

@WebServlet("/raise")
public class raiseServlet extends HttpServlet {


		private static final long serialVersionUID = 1L;
	       

		protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
			
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String service = request.getParameter("service");
			String requesttype = request.getParameter("category");
			String issue = request.getParameter("issue");
			
			
			RequestDispatcher dispatcher = null;
			Connection con = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?useSSL=false","root","Pethmi092019");
				PreparedStatement pst = con.prepareStatement("insert into cus(name,email,service,requesttype,issue,Status) values(?,?,?,?,?,'Pending')");
				pst.setString(1, name);
				pst.setString(2, email);
				pst.setString(3, service);
				pst.setString(4, requesttype);
				pst.setString(5, issue);
				
				int rowCount = pst.executeUpdate();
				dispatcher =request.getRequestDispatcher("raise.jsp");
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

