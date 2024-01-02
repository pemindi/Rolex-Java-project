<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.* "%>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.DriverManager" %>
	<%@page import="java.sql.Connection" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" href="css/updateRaise.css">
</head>
<body>
<div class="upcont">
        <h2>Update Ticket</h2>
<%
	String u = request.getParameter("u");
	Integer ID = Integer.parseInt(u); 
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?characterEncoding=utf8","root","Pethmi092019");
	Statement statement = connection.createStatement();
	ResultSet resultSet = statement.executeQuery("select * from cus where id='"+ID+"'");
%>


<form action="UpdateRecord" method="post">

<%
 while(resultSet.next()){
%>


<div class="from-group"><input type="hidden" class="form-control" name="UID" value=" <% out.print(resultSet.getString("id")); %>"> </div>
<div class="form-group">
<label for = "name">Name :</label>
<input type="text" class="form-control" name="Uname" value=" <% out.print(resultSet.getString("name")); %>" disabled> </div>
<br>
<div class="form-group">
<label for = "email">Email :</label>
<input type="text" class="form-control" name="UEmail" value=" <% out.print(resultSet.getString("email")); %>" disabled> </div>
<br>
<div class="form-group">
<label for = "Service">Service :</label>
<select id = "service" name = "UService" disabled>
<option value = "Television">TV</option>
<option value = "Mobile">Mobile</option>
<option value = "Internet">Broadband</option>
</select></div>
<br>
<div class="form-group">
<label for = "Request Type">Request Type :</label>
<select id = "requesttype" name = "URequestType" disabled>
<option value = "Technical Support">Technical Support</option>
<option value = "Billing Inquiry">Billing Inquiry</option>
<option value = "Other">Other</option>
</select></div>
<br>
<div class="form-group">
<label for = "issue">Issue :</label>
<input type="text" class="form-control" name="UIssue" value=" <% out.print(resultSet.getString("issue")); %>" disabled> </div>
<br>
<div class="form-group">
<label for = "Status">Status :</label>
<select id = "Status" name = "UStatus">
<option value = "Pending">Pending</option>
<option value = "Solved">Solved</option>
<option value = "Not Solved">Not Solved</option>
</select></div>
<br>
<%
 
 }

%>
<div class="card-footer text-center">
	
	<input type="submit" name="submit" value="Update" id="update" class="form-control btn-primary">

</div>

</form>
<br><br><br>
</body>
</html>
