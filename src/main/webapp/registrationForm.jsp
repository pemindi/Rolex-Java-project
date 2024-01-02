<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Registration</title>
    <link rel="stylesheet" href="css/registrationForm.css">
    <script src="https://kit.fontawesome.com/6852548551.js" ></script>
</head>
<body>

<div class="cont">
    <img class="background-image" src="images/image1_0.jpg" alt="Background Image">
    <div class="overlay">
        <div class="form-box">
            <h1>Create an Account</h1>
            
            <form  method="post" action="register">
            
                <div class="input-field">
                    <i class="fa-solid fa-id-card"></i> 
                    <input type="text" placeholder="NIC"  id="nic" name="nIC"  required>
					</div>
					
            
                <div class="input-field">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" placeholder="First Name" id="customer_fname" name="fname" required>
                </div>
                
                <div class="input-field">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" placeholder="Last Name" id="customer_lname" name="lname" required>
                </div>
                
                <div class="input-field">
                    <i class="fa-solid fa-phone"></i>
                    <input type="text" placeholder="Telephone Number" id="customer_No" name="Tno"  required>
                </div>
                
                <div class="input-field">
                    <i class="fa-solid fa-map-marker"></i>
                    <input type="text" placeholder="Address"  id="customer_add" name="add" required>
                </div>
                
                <div class="input-field">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" placeholder="Email Address" id="customer_email" name="email" required>
                </div>
                
                <div class="input-field">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" placeholder="Password" id="password" name="passs" required>
                </div>
                
                <div>
                <button type="submit">Sign Up</button>
                </div>
                
                <p>Already have an account?<a href="loginForm.jsp"> Sign in Here!</a></p>
            </form>
        </div>
    </div>
</div>
</body>
</html>
