<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.* "%>
    <%@page import="java.io.IOException" %>
    <%@page import="java.sql.ResultSet" %>
    
    <%
 if(session.getAttribute("name")==null){
	 response.sendRedirect("admin_login.jsp");
 }
 %> 
    
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color:rgb(111, 162, 175);
        }
    </style>
    <link rel="stylesheet" href="css/index1.css">
    <title>Admin user Profile Update</title>
</head>
<body>
    
    <section class="header">
        <div class="banner">
            <div class="slider">
                <img src="images/image1_0.jpg" id="slideImg" >
            </div>
            <div class="overlay">
            <div class="navbar">
                <div class="logo">
                    <img src="images\logo4.png">
                </div> 
                <div class="nav-links">
                   <ul>
                    <li><a href="view_activeServices.jsp">Activating Services</a></li>
                    <li><a href="viewRaise.jsp">Tickets</a></li>
                    <li><a href="#">Chats</a></li>
                   </ul>
                </div>
             </div>
             <div class="content">
                <h1>Welcome to Rollex </h1>
                <h3>At Rollex, we're dedicated to providing you with exceptional customer care and support for all your telecommunication needs. With a commitment to excellence and innovation, we are here to ensure that your communication experience is seamless, reliable, and tailored to your unique requirements.</h3>
            </div>
            </div>
        </div>
        <script>
            var slideImg=document.getElementById("slideImg");
            var images=new Array
            (    
                "images/image1_0.jpg",
                "images/_Bluish white o 0.png",
                "images/_Pictures of cu 1.png",
                "images/_Visuals of cus 0.png",

            );

            var len= images.length;
            var i=0;
 
            function slider()
            {
                if(i>len-1)
                {
                    i=0;
                }
                slideImg.src=images[i];
                i++;
                setTimeout('slider()',3000);
            }
          
        </script>
    </section>
    
    
    <section style="margin: 2% 2% 2% 2%;">
    
    <h1 style="margin-top:2% ; text-decoration: underline;">Customer Registration Information</h1>
    <table style="margin-top:1%; class="table">
        <thead>
            <tr>
                <th>customerID</th>
                <th>NIC</th>
                <th>customer_fname</th>
                <th>customer_lname</th>
                <th>customer_No</th>
                <th>customer_add</th>
                <th>customer_email</th>
                <th>password</th>
                <th>Edit</th>
                <th>Update</th>
            </tr>
        </thead>
        <%
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/rollex?characterEncoding=utf8", "root", "Pethmi092019");
            statement = connection.createStatement();
            resultSet = statement.executeQuery("select * from customer");

            while (resultSet.next()) {
        %>
            <tr align="center">
                <td><% out.println(resultSet.getString("idcustomer")); %></td>
                <td><% out.println(resultSet.getString("nic")); %></td>
                <td><% out.println(resultSet.getString("customer_fname")); %></td>
                <td><% out.println(resultSet.getString("customer_lname")); %></td>
                <td><% out.println(resultSet.getString("customer_No")); %></td>
                <td><% out.println(resultSet.getString("customer_add")); %></td>
                <td><% out.println(resultSet.getString("customer_email")); %></td>
                <td><% out.println(resultSet.getString("password")); %></td>

                <td>
                    <div class="card" style="width: 5rem;">
                        <a href='update_record.jsp?u=<%= resultSet.getString("idcustomer") %>' class="btn tn-success"><b>Edit</b></a>
                    </div>
                </td>
                <td>
                    <b>
                        <form action='delete?d=<%= resultSet.getString("idcustomer") %>' method="post">
                            <div class="card" style="width: 5rem;">
                                <input type="submit" name="delete" value="Delete" idcustomer="<%= resultSet.getString("idcustomer") %>"
                                    class="btn-danger " style="background-color: rgb(175, 100, 100); color: white; padding: 5px 10px;">
                            </div>
                        </form>
                    </b>
                </td>
            </tr>
            <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </table>
    
    </section>
     <jsp:include page="footer.jsp" />
</body>
</html>