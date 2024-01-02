<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>header</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: rgb(104, 134, 154);
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        .logo {
            margin-right: 20px;
        }

        .logo img {
            width: 50px;
        }

        .navigation {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .navigation li {
            margin: 0 20px;
        }

        .navigation a {
            text-decoration: none;
            color: white;
            font-size: 18px;
        }

        .navigation a:hover {
            color: #FFA500;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="logo">
        <img src="images/logo4.png" alt="Logo">
    </div>
    <ul class="navigation">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="aboutus.jsp">About</a></li>
        <li><a href="support1.jsp">Support</a></li>
        <li><a href="contactus.jsp">Contact us</a></li>
    </ul>
</div>
</body>
</html>