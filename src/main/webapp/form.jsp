<!DOCTYPE html>
<html lang="en">
<head>

	<link rel="stylesheet" href="css/formStyle2.css">
  	<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  		
  	<title>Sample HTML Code - NewsLetter Form</title>
  	<link rel="stylesheet" href="formStyle2.css">
</head>

<body>

<script>
    var status = "<%= request.getAttribute("status") %>";
    
    if (status === "success") {
        alert("Activation is successful");
    } else if (status === "failed") {
        alert("Activation failed. Please try again.");
    }
</script>

<main>
    
    <section class="intro">
    	<h1 class="title">Get Your Package Now</h1>
      <p class = "col">Thanks for being part of our community </p>
      <br>
      <div class="image-container">
      <img src="https://th.bing.com/th/id/OIP.eEv097Pwq8re2DZiB-ab2gHaF7?pid=ImgDet&w=1600&h=1280&rs=1" class="img-sty" alt="Image Description">
    </div>
    </section>

    <section class="sign-up">
    <button class="submit-btn" onclick="window.location.href='index.jsp'">Home</button>

       <form class="sign-up-form" method ="post" action = "form">
		  <p class="col"><b><u>Package Activation Details</u></b></p>
		  <br>
        
        <div class="form-input">
        <label class="black-label" for="F_Name">Enter First Name Of The Customer</label>
        <input type="text" name="F_Name" id="F_Name" placeholder="First Name" required>
        <span>!</span>
        <p class="warning">First name cannot be empty</p>
        </div>
        
        <div class="form-input">
        <label class="black-label" for="L_Name">Enter Last Name Of The Customer</label>
        <span class="label success">Success</span>
        <input type="text" name="L_Name" id="L_Name" placeholder="Last Name" required>
        <span>!</span>
        <p class="warning">Last name cannot be empty</p>
        </div>
        
         <div class="form-input">
         <label class="black-label" for="NIC">Enter NIC Of The Customer</label>
         <input type="text" name="NIC" id="NIC" placeholder="NIC number" required>
         <span>!</span>
         <p class="warning">Looks like this is not an NIC</p>
         </div>

        <div class="form-input">
         <label class="black-label" for="Contact">Enter Contact Number Of The Customer</label>
         <input type="text" name="Contact" id="Contact" placeholder="Contact Number" required>
         <span>!</span>
          <p class="warning">Contact cannot be empty</p>
          </div>


        <div class="form-input">
        <label class="black-label" for="Address">Enter Address Of The Customer</label>
         <input type="text" name="Address" id="Address" placeholder="Address" required>
         <span>!</span>
         <p class="warning">Password cannot be empty</p>
         </div>
        
        <div class="form-input">
        <label for="ActivationType">ActivationType:</label>
            <select id="ActivationType" name="ActivationType" >
            <option value =""disabled selected>Select the type of the activation </option>
                <option value="Television">Television</option>
                <option value="Mobile">Mobile</Option>
                <option value="Internet">Internet</option>
            </select>
        </div>
        
        <div class="form-input">
        <label for="ServiceType">ServiceType:</label>
            <select id="ServiceType" name="ServiceType" >
            <option value =""disabled selected>Select the package </option>
                <option value="Basic Cable Package">Basic Cable Package</option>
                <option value="Silver Cable Package">Silver Cable Package</Option>
                <option value="Golden Cable Package">Golden Cable Package</option>
                <option value="PowerPlan 600">PowerPlan 600</option>
                <option value="PowerPlan 700">PowerPlan 700</Option>
                <option value="PowerPlan 800">PowerPlan 800</option>
                <option value="Work & Learn">Work & Learn</option>
                <option value="SocialMedia">SocialMedia</Option>
                <option value="AllOne">AllOne</option>
            </select>
        </div>
        
        <div class="from-input"><input type="hidden" class="form-control" name="Status" value="Activated" > </div>
        <br>

        <input class="submit-btn" type="submit" value="Claim your package">
      
      </form>
      <br>
      
    </section>
  </main>
 </div>
   
</body>

</html>