<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rollex</title>
    <link rel="stylesheet" href="css/index1.css">
  </head>
  <body onload="slider()">
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
                    <li><a href="aboutus.jsp">About</a></li>
                    <li><a href="packages.jsp">Packages</a></li>
                    <li><a href="contactus.jsp">Contact us</a></li>
                    
                    
                   </ul>
                </div>
             </div>
             <div class="content">
                <h1>Welcome to Rollex </h1>
                <h3>At Rollex, we're dedicated to providing you with exceptional customer care and support for all your telecommunication needs. With a commitment to excellence and innovation, we are here to ensure that your communication experience is seamless, reliable, and tailored to your unique requirements.</h3>
                <div>
                   <a href="registrationForm.jsp"> <button type="button">Sign up</button> </a>
                   <a href="loginForm.jsp"><button type="button" class="btn-2">login</button></a>
                </div>
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


    <section class="media">
        <h1>What We Offer</h1>
        <p>Rollex team has designed to provide you with a seamless and responsive experience ,offering a range of services 24/7 .</p>
        <div class="row">
            <div class="offer-col">
                <h3>Mobile plan</h3>
                <p>we provide a comprehensive range of services to enhance your mobile experience. 
                   From resolving technical issues and assisting with device configurations to helping you manage your mobile plan,
                   our dedicated team is here to ensure you have seamless connectivity on the go.
                </p>
            </div>
            <div class="offer-col">
                <h3>Internet plan</h3>
                <p>We are committed to delivering high-speed, reliable connectivity. 
                   We offer expert assistance for setting up your broadband connection, troubleshooting network problems, and optimizing your internet speed.
                   Count on us to keep you connected and surfing smoothly.
                </p>
            </div>
            <div class="offer-col">
                <h3>TV plan</h3>
                <p>Experience entertainment without interruption with our TV customer care services.
                     We offer support for TV setup, channel packages, and resolving any viewing issues.
                      Our team is dedicated to delivering quality TV services, so you can enjoy your favorite shows and programs hassle-free
                </p>
            </div>
        </div>
    </section>

     
    <section class="images">
       <div class="row"> 
          <div class="image-col">
            <a href="packages.jsp">
            <img src="images/mobile.png">
            <div class="layer">
                <h3>MOBILE PLANS</h3>
            </div>
          </div>
          <div class="image-col">
            <a href="packages.jsp">
            <img src="images/network.png">
            <div class="layer">
                <h3>INTERNET PLANS</h3>
            </div>
          </div>
          <div class="image-col">
            <a href="packages.jsp">
            <img src="images/tv.png">
            <div class="layer">
                <h3>TV PLANS</h3>
            </div>
          </div>
       </div>
    </section>
     
    <script>
    var status = "<%= request.getAttribute("status") %>";
    
    if (status === "success") {
        alert("Registration was successful!");
    } else if (status === "failed") {
        alert("Registration failed. Please try again.");
    }
    </script>
    
  </body> 
  <jsp:include page="footer.jsp" /> 
</html>

