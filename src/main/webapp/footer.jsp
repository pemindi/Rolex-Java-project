<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Interactive Footer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        footer {
            background-color: rgb(104, 134, 154);
            color: white;
            padding: 20px;
            text-align: center;
        }

        footer a {
            text-decoration: none;
            color:#FFA500;
            transition: color 0.3s;
        }

        footer a:hover {
            color: #FFD700; /* Change color on hover */
        }
    </style>
</head>
<body>
    <!-- Your page content -->

    <footer>
        <p>&copy; 2023 Rollex</p>
        <p><a href="privacy.html">Privacy Policy</a> | <a href="terms.html">Terms of Service</a></p>
    </footer>
</body>
</html>