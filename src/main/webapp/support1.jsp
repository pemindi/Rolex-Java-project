<DOCTYPE Html>

    <head>



        <!--Style th epage-->
        <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./css/helpstyle.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <script src="script.js"></script>
        <title>Support page</title>
    </head>

    <body>
    <jsp:include page="header.jsp" />
        <!--Header-->
        <div class = "background">
            <div class = "slide">
                <img src="./images/p7.png" id ="slideimage">
                </div>
                <div class ="overlay">
            <div class="search-container">
                <input type="text" name="search" placeholder="Search..." class="search-input">
                <a href="#" class="search-btn">
                        <i class="fas fa-search"></i>      
                </a></div><br><br>
                <div>
                    <button class="containerbtn"><a href="raise.jsp"><p class = "text">Raise a ticket</p></a></button>
                    
                </div>
<br>
         <!--slide shower-->
         
            <div class="heading">
                <h3>You can learn more about our Services...</h3>
                <br>
            </div>
            
            <div class="container">
                <div class="box">
                    <div class="blog-img">
                        <img src="./images/mobile.jpg" alt="blog">
                    </div>
                
                    <div class="blog-text">
                        <span></span>
                          <h2>Mobile</h2>
                        <p>Mobile connections are private. It links your day-to-day activities and private data to the outside world. Your phone number may have been shared for social media accounts, business communications, etc.</p>
                        <a href="#">Read More</a>
                    </div>
                </div>
                

                <div class="container">
                    <div class="box">
                        <div class="blog-img">
                            <img src="./images/internet.jpg" alt="blog">
                        </div>
                        <div class="blog-text">
                            <span></span>
                              <h2>Internet</h2>
                            <p>We provide fastest internet connection throughout the world. And also Your connection status is displayed at top of the main dashboard.You can use Rolex app for easily find it.</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                  
                    <div class="container">
                        <div class="box">
                            <div class="blog-img">
                                <img src="./images/tv.jpg" alt="blog">
                            </div>
                            <div class="blog-text">
                                <span></span>
                                 <h2>Television</h2>
                                <p>We are providing the fastest connection throughout the world and you can experience it</p>
                                <a href="#">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
<div class="card">
        <input type="radio" name="select" id="tap-1" checked />
        <input type="radio" name="select" id="tap-2" />
        <input type="radio" name="select" id="tap-3" />
        <input type="radio" name="select" id="tap-4" />
        <input type="checkbox" id="imgTap" />
        <div class="sliders">
            <label for="tap-1" class="tap tap-1"></label>
            <label for="tap-2" class="tap tap-2"></label>
            <label for="tap-3" class="tap tap-3"></label>
            <label for="tap-4" class="tap tap-4"></label>
        </div>
        <div class="inner-part">
            <label for="imgTap" class="img">
      <img class="img-1"
        src="./images/p2.jpg" />
    </label>
            <div class="content content-1">

                <div class="title">Our Projects</div>
                <div class="text">
                    Rollex is a leading Telecommunication company that has successfully completed numerous projects catering to a wide range of industries. Our dedicated team of skilled professionals. 
                    technologies.

                </div>
            </div>
            <div class="inner-part">
                <label for="imgTap" class="img">
      <img class="img-2"
        src="./images/p3.jpg" />
    </label>
                <div class="content content-2">

                    <div class="title">Highly Rated 6.5+</div>
                    <div class="text">
                        The Rate System offered by our company is a potent instrument made to assist you in efficiently tracking and managing staff rates within your business.
                    </div>

                </div>
            </div>
            <div class="inner-part">
                <label for="imgTap" class="img">
      <img class="img-3"
        src="./images/p1.jpg" />
    </label>
                <div class="content content-3">

                    <div class="title">8k+ Workers</div>
                    <div class="text">
                         Our Company is thrilled to announce the 8000+ workers have joined with our company.
                    </div>

                </div>
            </div>
            <div class="inner-part">
                <label for="imgTap" class="img">
      <img class="img-4"
        src="./images/p10.jpeg" />
    </label>
                <div class="content content-4">

                    <div class="title">Customer Satisfaction</div>
                    <div class="text">
                        customer satisfaction is our top priority. We are dedicated to providing the best possible service.We're honored to have earned your trust and look forward to continuing to meet and exceed your expectations. 
                    </div>

                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <jsp:include page="footer.jsp" />
            </body>
            
        </html>    


      
