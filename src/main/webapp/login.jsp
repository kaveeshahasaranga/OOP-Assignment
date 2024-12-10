<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Sri Lanka Login</title>
    
    <link rel="icon" href="img/123Red Blue Lake Mountain Outdoor Circle Logo.png" type="image/x-icon">
    <link rel="stylesheet" href="Css/head&fotter.css">
    <style>
        /* Additional Styles for Centering the Form */
        .main-content {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 160px); /* Adjust height based on header and footer */
            background-image: url('https://ychef.files.bbci.co.uk/1280x720/p0dmqnyd.jpg');
        }

        .login-form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        .login-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .login-form label {
            display: block;
            margin-bottom: 10px;
        }

        .login-form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

         input[type="submit"] {
            width: 100%;
            background-color: #8707a1;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #d2e8ee;
        }
        .login-options {
		    display: flex;
		    margin-left: auto;
		}
		
		.option {
		    display: flex;
		    align-items: center;
		    margin-left: 50px;
		    font-size: 16px;
		}
		.admin-login-btn {
    width: 100%;
    padding: 15px;
    background-color:#420254;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
}
    </style>
</head>
<body>

<!-- Header Section -->

<div class = "navdiv">
    <div class = "logo">
    <a href = ""><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a>
    </div>
    <nav class = "navbar">
            <ul>
                <li><a href = "firsthome.jsp">Home</a></li>
                <li><a href = "map.jsp">Site Map</a></li>
                <li><a href = "UserGetAllServlet">Upcoming Event</a></li> <!--Add a drop downlist here-->
                <li><a href = "getall">Tour Listings</a></li>
                <li><a href = "">Booking </a></li>
                
                <li><a href = "ContactUs.jsp">Contact </a></li>
                <li><a href = "feedback.jsp">Feedback </a></li>
                

            </ul>
    </nav>
  </div>

<!-- Main Content (Centered Login Form) -->
<div class="main-content">
    <div class="login-form">
       
       <form action="loginservlet01" method="post">
      
            <div class="avatar"></div>
            <h2>Login as</h2>
            
        
        <label for="username">UserName:</label>
        <input type="text" id="gname" placeholder="Enter your username" required>
        
        <label for="password">PassWord:</label>
        <input type="password" id="pword" required>

        <input type="submit" value="Login" placeholder="Enter your password" >
         <button class="admin-login-btn" onclick="window.location.href='Adlogin.jsp'">Login as Admin</button>

    </form>
    </div>
</div>

<!-- Footer Section -->
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
