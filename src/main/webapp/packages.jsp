<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>Our Services</title>
    <link rel="stylesheet" href="css/serviceSection.css">
    <link rel="stylesheet" href="css/slideshow.css">
    
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  height: 100vh;
  width: 100%;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
<jsp:include page="header.jsp" />
	
<h1 style="font-family: Space Mono, monospace; font-size: 46px; color: DeepSkyBlue; margin-bottom: 40px"><center><b><u>Packages Tailored To Give You Best Entertainment</b></u></center></h1><br><br>


<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="https://i.pinimg.com/564x/28/21/f7/2821f7ff23b0cbaeab05052dd06d2047.jpg" style="width:100%" >
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="https://i.pinimg.com/564x/91/97/71/9197717d6ccf1d5107b9a20602c1814c.jpg" style="width:100%">
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="https://i.pinimg.com/564x/bb/d9/4b/bbd94bc9607942676a9da75197d1c811.jpg" style="width:100%">
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>


    <section class="service-grid pb-5 pt-5">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 text-center mb-4">
                    <div class="service-title">
                        <h1>Our Services</h1>
                        <hr>
                    </div>
                </div>
            </div>
            <h2>Television</h2>
            <div class="row">
                <div class="col-lg-4 col-md-6 text-center mb-3">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <i class="fas fa-layer-group"></i>
                        </div>
                        <h4>Basic Cable Package</h4>
                        <h5>Rs.1000.00</h5>
                        <p>per month</p>
                        <hr>
                        <h4>73 channels</h4>
                        <ul>
							<li>New connection only for Rs.4200</li>
							<li>Free installation</li>
							<li>Applicable taxes are added to the service</li>
						</ul>
						<a class = "button-72" href = "form.jsp" > Activate</a>
                        
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 text-center mb-3">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <i class="far fa-chart-bar"></i>
                        </div>
                        <h4>Silver Cable Package</h4>
                        <h5>Rs.2000.00</h5>
                        <p>per month</p>
                        <hr>
                        <h4>85 channels</h4>
                        <ul>
							<li>New connection only for Rs.5700</li>
							<li>Free installation</li>
							<li>Applicable taxes are added to the service</li>
						</ul>
						<a class="button-72" href = "form.jsp" > Activate</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 text-center mb-3">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <i class="fas fa-database"></i>
                        </div>
                         <h4>Golden Cable Package</h4>
                        <h5>Rs.3000.00</h5>
                        <p>per month</p>
                        <hr>
                        <h4>110 channels</h4>
                        <ul>
							<li>New connection only for Rs.6300</li>
							<li>Free installation</li>
							<li>Applicable taxes are added to the service</li>
						</ul>
						<a class = "button-72" href = "form.jsp" > Activate</a>
                    </div>
                </div>
                <hr>
                <h2>Mobile</h2>
                <div class="col-lg-4 col-md-6 text-center mb-3">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <i class="fas fa-cogs"></i>
                        </div>
                        <h4>PowerPlan 600</h4>
                        <h5>Rs.600.00</h5>
                        <p>per month</p>
                        <hr>
                        <h4>Unlimited R2R voive</h4>
                        <ul>
							<li>1000 R2R SMS/li>
							<li>5GB Anytime Data For Free</li>
							<li>Applicable taxes are added to the service</li>
						</ul>
						<a class = "button-72" href = "form.jsp" > Activate</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 text-center mb-3">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <i class="fas fa-chart-pie"></i>
                        </div>
                        <h4>PowerPlan 700</h4>
                        <h5>Rs.700.00</h5>
                        <p>per month</p>
                        <hr>
                        <h4>Unlimited AnyNet voive</h4>
                        <ul>
							<li>1000 R2R SMS/li>
							<li>7GB Anytime Data For Free</li>
							<li>Applicable taxes are added to the service</li>
						</ul>
						<a class = "button-72" href = "form.jsp" > Activate</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 text-center mb-3">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <i class="fas fa-thumbs-up"></i>
                        </div>
                        <h4>PowerPlan 800</h4>
                        <h5>Rs.800.00</h5>
                        <p>per month</p>
                        <hr>
                        <h4>Unlimited R2R voive</h4>
                        <ul>
							<li>1000 R2R SMS/li>
							<li>10GB Anytime Data For Free</li>
							<li>Applicable taxes are added to the service</li>
						</ul>
						<a class = "button-72" href = "form.jsp" > Activate</a>
                    </div>
                </div>
                <hr>
                <h2>Internet</h2>
                <div class="col-lg-4 col-md-6 text-center mb-3">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <i class="fas fa-cogs"></i>
                        </div>
                        <h4>Work & Learn</h4>
                        <h5>Rs.699.00</h5>
                        <p>per month</p>
                        <hr>
                        <h4>Unlimited Meetings</h4>
                        <ul>
							<li>Unlimited Data For Zoom/Microsoft teams Meetings</li>
							<li>Extra 2GB Anytime Data For Free</li>
							<li>Applicable taxes are added to the service</li>
						</ul>
						<a class = "button-72" href = "form.jsp" > Activate</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 text-center mb-3">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <i class="fas fa-chart-pie"></i>
                        </div>
                        <h4>SocialMedia</h4>
                        <h5>Rs.499.00</h5>
                        <p>per month</p>
                        <hr>
                        <h4>Unlimited Data For Social Media</h4>
                        <ul>
							<li>Unlimited Data For Whatsapp/Youtube/Facebook/Instagram</li>
							<li>Extra 5GB Anytime Data For Free</li>
							<li>Applicable taxes are added to the service</li>
						</ul>
						<a class = "button-72" href = "form.jsp" > Activate</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 text-center mb-3">
                    <div class="service-wrap">
                        <div class="service-icon">
                            <i class="fas fa-thumbs-up"></i>
                        </div>
                        <h4>AllOne</h4>
                        <h5>Rs.1099.00</h5>
                        <p>per month</p>
                        <hr>
                        <h4>Unlimited Data And Extra Data</h4>
                        <ul>
							<li>Unlimited Data On Any Social Media App (Whatsapp/Youtube/Facebook/Instagram)</li>
							<li>Extra 10GB Anytime Data For Free</li>
							<li>Applicable taxes are added to the service</li>
						</ul>
						<a class = "button-72" href = "form.jsp" > Activate</a>
                    </div>
                </div>
                
                
            </div>
        </div>
    </section>
   <script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>



 <jsp:include page="footer.jsp" />
</body>
</html>