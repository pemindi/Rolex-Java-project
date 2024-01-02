<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Update-Admin</title>
    <link rel="stylesheet" href="css/registrationForm.css">
    <script src="https://kit.fontawesome.com/6852548551.js"></script>
</head>
<body>
    <h5>Update Profile</h5>
    <%
        String u = request.getParameter("u");
        Integer ID = Integer.parseInt(u);

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?characterEncoding=utf8", "root", "Pethmi092019");
            statement = connection.createStatement();
            resultSet = statement.executeQuery("select * from customer where idcustomer='" + ID + "'");
            
            while (resultSet.next()) {
    %>
    <div class="cont">
    <img class="background-image" src="images/image1_0.jpg" alt="Background Image">
    <div class="overlay">
        <div class="form-box">
            <h1>Create an Account</h1>
            <form method="post" action="UpdateRecordServlet">
                <div class="input-field">
                    <i class="fa-solid fa-id-card"></i>
                    <input type="hidden" name="Uid" value="<%= resultSet.getString("idcustomer") %>">
                    <input type="text" placeholder="NIC" id="nic" name="nIC" value="<%= resultSet.getString("nic") %>">
                </div>

                <div class="input-field">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" placeholder="First Name" id="customer_fname" name="fname" value="<%= resultSet.getString("customer_fname") %>">
                </div>

                <div class="input-field">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" placeholder="Last Name" id="customer_lname" name="lname" value="<%= resultSet.getString("customer_lname") %>">
                </div>

                <div class="input-field">
                    <i class="fa-solid fa-phone"></i>
                    <input type="text" placeholder="Telephone Number" id="customer_No" name="Tno" value="<%= resultSet.getString("customer_No") %>">
                </div>

                <div class="input-field">
                    <i class="fa-solid fa-map-marker"></i>
                    <input type="text" placeholder="Address" id="customer_add" name="add" value="<%= resultSet.getString("customer_add") %>">
                </div>

                <div class="input-field">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" placeholder="Email Address" id="customer_email" name="email"  value="<%= resultSet.getString("customer_email") %>" required>
                </div>
                
                <div class="input-field">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" placeholder="Password" id="password" name="passs" value="<%= resultSet.getString("password") %>" required>
                </div>

                <div>
                    <button type="submit">Update</button>
                </div>
                
            </form>
        </div>
    </div>
</div>
    
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (resultSet != null) {
                resultSet.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
    %>
</body>
</html>

