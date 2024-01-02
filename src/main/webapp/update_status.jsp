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
<title>Insert title here</title>
<link rel="stylesheet" href="css/update.css">
</head>
<body>

<script>
    var status = "<%= request.getAttribute("status") %>";
    
    if (status === "success") {
        alert("Update is successful");
    } else if (status === "failed") {
        alert("Update failed. Please try again.");
    }
</script>

<div class = "cont">
<center><h2><b><u>Update Activated Service Status </u></b></h2></center>
<%
	String u = request.getParameter("u");
	Integer ID = Integer.parseInt(u); 
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?characterEncoding=utf8","root","Pethmi092019");
	Statement statement = connection.createStatement();
	ResultSet resultSet = statement.executeQuery("select * from activatingdetails where A_ID='"+ID+"'");
%>

   
		  

<form action="UpdateStatus" method="post" >

<%
 while(resultSet.next()){
%>

		  
<div class="form-container"><input type="hidden" class="form-control" name="UID" value=" <% out.print(resultSet.getString("A_ID")); %>"> </div>
<div class="form-input">
<label class="black-label" for = "F_Name">First Name :</label>
<input type="text" class="form-control" name="F_Name" value=" <% out.print(resultSet.getString("F_Name")); %>"disabled> </div>
<br>
<div class="form-input">
<label class="black-label" for = "L_Name">Last Name :</label>
<input type="text" class="form-control" name="L_Name" value=" <% out.print(resultSet.getString("L_Name")); %>"disabled>  </div>
<br>
<div class="form-input">
<label class="black-label" for = "NIC">NIC :</label>
<input type="text" class="form-control" name="NIC" value=" <% out.print(resultSet.getString("NIC")); %>"disabled> </div>
<br>
<div class="form-input">
<label class="black-label" for = "Contact">Contact Number:</label>
<input type="text" class="form-control" name="Contact" value=" <% out.print(resultSet.getString("Contact")); %>"disabled> </div>
<br>
<div class="form-input">
<label class="black-label" for = "Address">Address :</label>
<input type="text" class="form-control" name="Address" value=" <% out.print(resultSet.getString("Address")); %>"disabled> </div>
<br>
<div class="form-input">
<label class="black-label" for = "ActivationType" >ActivationType :</label>
            <select id="ActivationType" name="ActivationType" disabled>
                <option value="Television">Television</option>
                <option value="Mobile">Mobile</Option>
                <option value="Internet">Internet</option>
            </select></div>
<br>
<div class="form-input">
<label class="black-label" for="ServiceType">ServiceType:</label>
            <select id="ServiceType" name="ServiceType" disabled>
                <option value="Basic Cable Package">Basic Cable Package</option>
                <option value="Silver Cable Package">Silver Cable Package</Option>
                <option value="Golden Cable Package">Golden Cable Package</option>
                <option value="PowerPlan 600">PowerPlan 600</option>
                <option value="PowerPlan 700">PowerPlan 700</Option>
                <option value="PowerPlan 800">PowerPlan 800</option>
                <option value="Work & Learn">Work & Learn</option>
                <option value="SocialMedia">SocialMedia</Option>
                <option value="AllOne">AllOne</option>
            </select></div>
<br>
<div class="form-input">
<label class="black-label" for="Status">Status:</label>
            <select id="Status" name="Status" >
                <option value="Activated">Activated</option>
                <option value="Deactivated">Deactivated</Option>
                <option value="Hold">Hold</option>
            </select></div><br>


<%
 
 }

%>
<div class="card-footer text-center">
	
	<input type="submit" name="submit" value="Update" id="submit" >

</div>
</form>
<br><br><br>
</body>
</html>