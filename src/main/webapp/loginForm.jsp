<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rollex-Registration</title>
    <link rel="stylesheet" href="css/loginForm.css">
    <script src="https://kit.fontawesome.com/6852548551.js"></script>
  </head>
  <body>
     <div class="cont">
        <img class="background-image" src="images/image1_0.jpg" alt="Background Image">
        <div class="overlay">
        <div class="form-box">
        <h1>Login</h1>

        <form action="login" method="post">
        
        <div class="input-group"></div>
        <div class="input-field">
            <i class="fa-solid fa-user"></i>
            <input type="text" placeholder="Phone Number" id="customer_No"  name="uid" required>
        </div>

        <div class="input-field">
            <i class="fa-solid fa-lock"></i>
            <input type="password" placeholder="Password" id="password" name="passs" required>
        </div>
        <p>Lost password<a href="#"> Click Here!</a></p>
          <div>
           <button type="submit">Sign In</button> 
          </div>
          <p>Doesn't have an account yet?<a href="registrationForm.jsp"> Sign up Here!</a></p>      
        	</form>
          </div>
        </div>
     </div>
     <script>
    var status = "<%= request.getAttribute("status") %>";
    if (status === "failed") {
        alert("Login failed. Incorrect username or password.");
    }
    
    </script>
     
  </body>
</html>