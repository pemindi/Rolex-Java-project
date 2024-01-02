package com.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class delete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1><center>Record Delete Successful</center><h1>");
        String d = request.getParameter("d");
        Integer ID=Integer.parseInt(d);
        out.println(d);
        out.println("ID");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?characterEncoding=utf8", "root", "Pethmi092019");
            Statement stat = conn.createStatement();
            stat.executeUpdate("delete from customer where idcustomer='" + ID + "'");
            response.sendRedirect("adminView.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            out.println(e.getMessage());
        }
    }
}

