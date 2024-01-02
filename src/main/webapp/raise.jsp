<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" type="text/css" href="./css/ticket.css">
    <title>Customer Support Ticket</title>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <button id="submitBtn" onclick="window.location.href='index.jsp'">Home</button>
    <div class="background-animation">
    <div class = "back">
    <div class="ticket-container">
        <h1>Customer Support Ticket</h1>
        <form id="ticket-form" action="raise" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name"placeholder="name" name="name" required>
            <br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email"placeholder="abc@gmail.com" pattern="[a-z0-9.%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required> 
             <br><br>
           <label for="service">Service:</label>
            <select id="service" name="service" required>
           <option value="" disabled selected>Select a service</option>
           <option value="Mobile">Mobile</option>
           <option value="Television">Television</option>
           <option value="Internet">Internet</option>
           </select>
           <br><br>
            <label for="category">Request type:</label>
           <select id="category" name="category" required>
           <option value="" disabled selected>Select a request type</option>
           <option value="Technical Support">Technical Support</option>
           <option value="Billing Inquiry">Billing Inquiry</option>
           <option value="Other">Other</option>
           </select>
            
            <br><br>
            <label for="issue">Issue:</label>
            <textarea id="issue" name="issue" rows="4" required></textarea>
             <br><br>
            <label for="file-input">Select a PDF or Word document:</label>
            <input type="file" id="fileinput" name="file" accept=".pdf, .docx">
            
            <label for = "file-input"><input type = "hidden" class = "form-control" name = "Status" value = "Pending"></label>
           
            <br>
            <button id="submitBtn">Submit</button>
           
           
          


        </form>
    </div>
</div>
</div>
<script>
    var status = "<%= request.getAttribute("status") %>";
    
    if (status === "success") {
        alert("Details are succesfully submited!");
    } else if (status === "failed") {
        alert("failed. Please try again.");
    }
</script>
</body>
</html>