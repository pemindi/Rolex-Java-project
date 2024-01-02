<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.* "%>
    <%@page import="java.io.IOException" %>
    <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin raise ticket update</title>
<link rel="stylesheet" href="css/viewRec.css">
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.dashboard {
    background-color: #fff;
    max-width: 1000px;
    margin: 20px auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h1 {
    text-align: center;
}

.data-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

.data-table th, .data-table td {
    padding: 10px;
    text-align: left;
    border: 1px solid #ccc;
}

.data-table th {
    background-color: #007BFF;
    color: #fff;
}

.data-table tr:nth-child(even) {
    background-color: #f2f2f2;
}

.data-table tr:hover {
    background-color: #ddd;
}

#submit {
    background-color: #4CAF50;
    width: 80px; 
    height: 40px; 
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

#submit a {
    color: #fff; 
    text-decoration: none; 
    }

#submit:hover {
    background-color: #006400;
}



input[type="submit"] {
    width: 80px; 
    height: 40px; 
    background-color: #FF0000; 
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #CC0000; /* A darker shade of red when hovered */
}




   
</style>
</head>
<body>
<jsp:include page="adminheader.jsp" />
 <div class="dashboard">
        <h1>Ticket Details</h1>
        <table class="data-table">
            <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Service</th>
            <th>Request Type</th>
            <th>Issue</th>
            <th>Status</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
	
	<%
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		      connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?characterEncoding=utf8","root","Pethmi092019");
		statement = connection.createStatement();
		resultSet = statement.executeQuery("select * from cus");
	
		while(resultSet.next()){
	%>
	<tr align ="center">
	<th scope="row"> <% out.println(resultSet.getString("id")); %></th>
	<td> <% out.println(resultSet.getString("name")); %></td>
	<td scope="row"> <% out.println(resultSet.getString("email")); %></td>
	<td> <% out.println(resultSet.getString("service")); %></td>
	<td scope="row"> <% out.println(resultSet.getString("requesttype")); %></td>
	<td> <% out.println(resultSet.getString("issue")); %></td>
	<td scope="row"> <% out.println(resultSet.getString("Status")); %></td>  
	
	<td><div class="card" style="width:v5rem;">
	<button id="submit">
	<a href='updateRaise.jsp?u=<%=resultSet.getString("id") %>' class="btn tn-success"><b>Edit</b></a></button></div></td>
	<td><b> <form action='deleteRaise?d=<%=resultSet.getString("id") %>' method="post"> <div class="card" style="width: 5rem;">
	<input type ="submit" name="deleteRaise" value="Delete" id="<%= resultSet.getString("id")  %>" class="btn-danger"></form>
	</div></form></b></td>
	</tr>

	
	<% }
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	
</table>
 
</body>

<jsp:include page="footer.jsp" />
</html>