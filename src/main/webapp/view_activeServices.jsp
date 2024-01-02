<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.* "%>
    <%@page import="java.io.IOException" %>
    <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<style>
   body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.dashboard {
    background-color: #fff;
    max-width: 1500px;
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
    margin-top: 10px;
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
<meta charset="ISO-8859-1">
<title>Activated Services</title>

</head>
<body>
<jsp:include page="adminheader.jsp" />
<div class="dashboard">
<h1>Activated Packages Details</h1>
<table class ="data-table">
	<thead>
		<tr>
		<th>ID</th>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>NIC</th>
        <th>Contact Number</th>
        <th>Address</th>
        <th>Activation type</th>
        <th>Service type</th>
         <th>Status</th>
        <th>Edit</th>
        <th>Delete</th>
			
		</tr>
	</thead>
	
	<%
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?characterEncoding=utf8","root","Pethmi092019");
		statement = connection.createStatement();
		resultSet = statement.executeQuery("SELECT * FROM activatingdetails");
	
		while(resultSet.next()){
	%>
	<tr align ="center">
	<th scope="row"> <% out.println(resultSet.getString("A_ID")); %></th>
	<td> <% out.println(resultSet.getString("F_Name")); %></td>
	<td scope="row"> <% out.println(resultSet.getString("L_Name")); %></td>
	<td> <% out.println(resultSet.getString("NIC")); %></td>
	<td scope="row"> <% out.println(resultSet.getString("Contact")); %></td>
	<td> <% out.println(resultSet.getString("Address")); %></td>
	<td scope="row"> <% out.println(resultSet.getString("ActivationType")); %></td>
	<td> <% out.println(resultSet.getString("ServiceType")); %></td>
	<td scope="row"> <% out.println(resultSet.getString("Status")); %></td>
	
	<td><div class="card" style="width:v5rem;">
	<button id="submit">
	<a href='update_status.jsp?u=<%=resultSet.getString("A_ID") %>' class="btn tn-success"><b>Edit</b></a></button></div></td>
	<td><b><form action='deleteService?d=<%=resultSet.getString("A_ID") %>' method="post"> <div class="card" style="width: 5rem;">
	<input type ="submit" name="deleteService" value="Delete" A_ID="<%= resultSet.getString("A_ID")  %>" class="btn-danger"></form>
	</div></form></b></td>
	</tr>
	</b></td>
	</tr>
	<% }
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	
</table>
<jsp:include page="footer.jsp" />
</body>
</html>