<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Contact Us Page</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
}

body {
	background-image: url('./images/p7.png'); 
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
 
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    opacity: 0;
    animation: pageLoadAnimation 1s forwards;
}

@keyframes pageLoadAnimation {
    0% {
        opacity: 0;
        transform: scale(0.9);
    }
    100% {
        opacity: 1;
        transform: scale(1);
    }
}

.contact {
    width: 600px;
    margin: 100px auto 0px auto;
    padding: 20px;
    background-color:  rgb(192, 192, 192);
    border: 1px solid #ffffff;
    backdrop-filter: blur(20px);
    box-shadow: 0 0 30px rgb(224, 214, 223);
    border-radius: 20px;
}

h1 {
    text-align: center;
    margin-top: 0;
}

.form {
    margin-bottom: 20px;
    display: block;
    font-weight: bold;
}

.form input#name {
    width: 95%;
    padding: 8px;
}
.form input#message {
    width: 95%;
    padding: 8px;
}
.form input#email {
    width: 95%;
    padding: 8px;
}

#subBtn {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

#subBtn:hover {
    background-color: #29cce9;
}

.info {
    display: flex;
    align-items: center;
    margin-top: 20px;
    gap: 20px
}

.info i {
    font-size: 30px;
    margin-right: 10px;
}

.info p {
    font-size: 15px;
}

.containerf {
    display: flex;
    justify-content: space-between;
    max-width: 100%;
    width: 100%;
    margin: auto;
}

ul {
    list-style: none;
}

a {
    line-height: 1.5;
    color: #fff;
    text-decoration: none;
}

.row {
    display: flex;
    flex-wrap: wrap;
}
</style>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>


<body>
<jsp:include page="header.jsp" />


    <div class="contact">
        <h1>Contact Us</h1>
        <form>
            <div class="form">
                Name : <br>
                <input type="text" id="name" name="name" required><br><br> Email : <br>
                <input type="text" id="email" name="email" required><br><br> Message : <br>
                <textarea id="message" cols=70 rows=10 name="message" required></textarea><br><br>

                <center>
                    <a href="index.html"><input type="submit" value="submit" id="subBtn"></a>
                </center>
            </div>
            <div class="info">
                <i class="fas fa-map-marker-alt"></i>
                <p>No 90,<br>Kandy Road,<br>Colombo.</p>

                <i class="fas fa-phone"></i>
                <p>+94 75 8963207</p>


                <i class="fas fa-envelope"></i>
                <p>Rollex@gmail.com</p>
            </div>
        </form>
    </div>
    <br>
    <br>
    <br>
   
</html>