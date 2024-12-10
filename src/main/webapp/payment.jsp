<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Details</title>
     <link rel="stylesheet" href="Css/head&fotter.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyyKQwmoN_zRo0JWhAkRKf0oevdFxWREL6GQ&s'); /* Add Sri Lanka background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.9); /* Transparent white background for form readability */
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }

        form {
            margin: 0 auto;
            padding: 10px;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .submit-btn {
            background-color: blue;
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px 310px;
            border-radius: 5px;
        }
        .submit-btn:hover {
            background-color: #218889;
        }
        .payment-logos img {
            height: 60px;
            margin-right: 50px;
        }
        
    </style>
</head>
<body>

<div class = "navdiv">
    <div class = "logo">
    <a href = ""><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a>
    </div>
    <nav class = "navbar">
            <ul>
                 <li><a href = "userhome.jsp">Home</a></li>
                  <li><a href = "map.jsp">Site Map</a></li>
                  <li><a href = "UserGetAllServlet">Upcoming Event</a></li> <!--Add a drop downlist here-->
                  <li><a href = "getall">Tour Listings</a></li>
                  <li><a href = "userDashboard.jsp">Booking</a></li>
                  <li><a href = "payment.jsp">Payment</a></li>
                  
                  <li><a href = "ContactUs.jsp">Contact </a></li>
                  <li><a href = "feedback.jsp">Feedback </a></li>
                

            </ul>
    </nav>
  </div>


    <div class="container">
        <h2>Add Card Details</h2>
        <p>Payment Details</p>
        <form action="processPayment.jsp" method="post">
            
            <label for="fullName">Full Name:</label>
            <input type="text" name="fullName" id="fullName" placeholder="Your Full Name" required>
            
            <label for="email">Email Address:</label>
            <input type="email" name="email" id="email" placeholder="Your Email" required>
            
            <label for="Card Name">Card Name:</label>
            <input type="text" name="Card Name" id="Card Name" placeholder="Your Card Name" required>
            
            <label for="cardNumber">Card Number:</label>
            <input type="text" name="cardNumber" id="cardNumber" placeholder="Your Card Number" required>
            
            <label for="expiryDate">Expiry Date (MM/YY):</label>
            <input type="month" name="expiryDate" id="expiryDate" placeholder="MM/YY" required>
            
            <label for="cvv">CVV:</label>
            <input type="text" name="cvv" id="cvv" placeholder="3-digit CVV" required>
            
            <p>Accepted Cards</p>
            
           <div class="payment-logos">
                        <img src="https://logowik.com/content/uploads/images/580_visa.jpg" width="10%" height="200%" alt="Visa">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_VemUxgztGV4ggToCRRDxGE334P-7wQ_Tqw&s"  width="10%" height="100%" alt="MasterCard">
                        <img src="https://e7.pngegg.com/pngimages/711/297/png-clipart-logo-american-express-payment-computer-icons-brand-american-express-blue-text-thumbnail.png" width="10%" height="150%" alt="American Express">
                        <img src="https://www.genie.lk/wp-content/uploads/2021/03/genie-logo.png" width="10%" height="100%" alt="genie">
                        <img src="https://www.checkpoint-tshirt.com/cdn/shop/products/Skynet-Terminator-II-Couleur-Blanc-Marque-Checkpoint-3.jpg?v=1640092506" width="10%" height="100%" alt="skynet">
            </div>
           
            <button type="submit" class="submit-btn">Submit Payment</button>
        </form>
    </div>
    <footer>
    <div class="top-section">
        <img src="img/123Red Blue Lake Mountain Outdoor Circle Logo.png" alt="Company Logo">
        <h3>SmartGuide</h3>
        <div class="social-media-icons">
            <a href="#"><img src="img/kindpng_203618.png" alt="Facebook"></a>
            <a href="#"><img src="img/7417365_whatsapp business_whatsapp_chat_communication_icon.png" alt="Twitter"></a>
            <a href="#"><img src="img/logo-instagram-png-13564.png" alt="Instagram"></a>
        </div>
    </div>
    <div class="subtopics">
        <div class="contact-details">
            <h4>Contact Us</h4>
            <p>123 Main Street, Kaduwela</p>
            <p>Phone: 0113233656</p>
            <p>Email: SmartGuideonline@gmail.com</p>
        </div>
        <div class="newsletter">
            <h4>Newsletter</h4>
            <p>Subscribe to our newsletter for updates.</p>
            <a href="contact.html">Contact Us</a>
        </div>
        <div class="customer-links">
            <h4>Customer Links</h4>
            <ul>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">Terms &amp; Conditions</a></li>
            </ul>
        </div>
    </div>
    <hr>
    <p>&copy; 2024 SmartGuide. All rights reserved.</p>
</footer>
</body>
</html>