<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Form</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
    :root {
        --primary-color: #4CAF50; /* Light green */
        --secondary-color: #45a049; /* Darker green for hover effects */
        --background-color: #e8f5e9; /* Very light green background */
        --card-background: rgba(255, 255, 255, 0.9);
        --text-color: #333333;
        --text-light: #666666;
    }

    body {
        font-family: 'Arial', sans-serif;
        background-image: url('img/back.png');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        color: var(--text-color);
        line-height: 1.6;
        
        margin: 0;
    }
    
    .container {
        max-width: 800px;
        margin: 20px auto;
        background-color: var(--card-background);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    h1 {
        font-size: 28px;
        margin-bottom: 20px;
        color: var(--primary-color);
        text-align: center;
    }

    .description {
        font-size: 16px;
        margin-bottom: 20px;
        text-align: center;
        color: var(--text-light);
    }

        .hotel {
            margin: 30px 0;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            transition: transform 0.3s;
        }

        .hotel:hover {
            transform: scale(1.02);
        }

        .hotel h2 {
            font-size: 24px;
            color: var(--primary-color);
            margin-bottom: 15px;
        }

        .hotel img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        .hotel p {
            margin-bottom: 10px;
        }

        .rating {
            color: #f39c12;
            font-size: 18px;
        }

        form {
            display: grid;
            gap: 15px;
            margin-top: 20px;
        }

        .form-group {
            position: relative;
        }

        input, select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        input:focus, select:focus, textarea:focus {
            border-color: var(--primary-color);
            outline: none;
        }

        button {
            background-color: var(--secondary-color);
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #27ae60;
        }

        .success-message {
            color: var(--secondary-color);
            font-weight: bold;
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background-color: #e8f8e8;
            border-radius: 5px;
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }
        }

        .icon {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-light);
        }
        
          /* navigation bar*/
.navdiv{
    width: 100%;
    height: 70px;
    top: 0;
    left: 0;
    
    display:flex;
    align-items: center;
    justify-content: space-between;
    background-color:rgb(240, 255, 240) ;
}

.logo{
    top: 10%;
}

.logo img{

    width : 115px;
    height : 115px;
    margin-top: 2%;
    margin-left: 15%;
}


.navbar li{
    list-style: none;
    background-color:transparent ;
    padding: 0px;
    margin : 0px;
    overflow: hidden;
    float:left;
}

.navbar a{
    color: black;
    text-decoration: none;
    padding: 15px;
    display: inline-block;
    text-align: center;
}

.navbar li:hover{
    background-color: #96cca7;
    color:white;
}


.search-icon{
    color: rgb(113, 110, 110);
    width: 25px;
    height: 25px;
}



.button {
  display: inline-block;
  background-color: #8dcca1;
  color: white;
  font-family: 'Cinzel';
  font-weight: bold;
  text-align: center;
  padding: 7px 12px;
  margin-left: 10px;
  border-radius: 12px;
  text-decoration: none; /* Remove underline from links */
  transition: box-shadow 0.25s, border-radius 0.25s;
  width: 100px; /* Set a fixed width */
}

.button:hover {
  box-shadow: 0 0 8px rgb(132, 158, 136);
  border-radius: 20px;
  padding: 10px 15px; /* Ensure padding remains consistent */
}

@media screen and (max-width: 768px) {
  .button {
      width: auto; /* Make it responsive for smaller screens */
      padding: 8px 12px; /* Adjust padding for smaller devices */
  }
}


.maindiv{
    width: 100%;
    height: 1000px;
    top: 100px;

}
        
    </style>
</head>
<body>
<div class = "navdiv">
    <div class = "logo"><a href = ""><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
    <nav class = "navbar">
            <ul>
                <li><a href = "userhome.jsp">Home</a></li>
                <li><a href = "map.jsp">Site Map</a></li>
                <li><a href = "UserGetAllServlet">Upcoming Event</a></li> <!--Add a drop downlist here-->
                <li><a href = "getall">Tour Listings</a></li>
                <li><a href = "userDashboard.jsp">Booking</a></li>
                
                <li><a href = "ContactUs.jsp">Contact </a></li>
                <li><a href = "feedback.jsp">Feedback </a></li>
                

            </ul>
    </nav>
  </div>


    <div class="container">
        <h1>Hotel Booking</h1>
        <p class="description">
            Please fill in the details below to book your stay. Ensure that all information is accurate to avoid any issues with your reservation. If you have special requests, feel free to mention them in the description box.
        </p>
        
        <form action="SubmitBookingServlet" method="post">
            <input type="hidden" name="hotelId" value="1">
            <div class="form-group">
                <input type="text" name="fullName" placeholder="Full Name" required>
            </div>
            <div class="form-group">
                <input type="email" name="email" placeholder="Email" required>
            </div>
            <div class="form-group">
                <input type="tel" name="phone" placeholder="Phone" required>
            </div>
            <div class="form-group">
                <input type="date" name="checkInDate" required>
            </div>
            <div class="form-group">
                <input type="date" name="checkOutDate" required>
            </div>
            <div class="form-group">
                <select name="roomType" required>
                    <option value="">Select Room Type</option>
                    <option value="Single">Single</option>
                    <option value="Double">Double</option>
                </select>
            </div>
            <div class="form-group">
                <input type="number" name="numGuests" min="1" placeholder="Number of Guests" required>
            </div>
   
            <button type="submit">Book Now</button>
        </form>

        <% 
            // Retrieve and display the success message from the session
            String message = (String) session.getAttribute("message");
            if (message != null) { 
        %>
            <p class="success-message"><%= message %></p>
        <%
            session.removeAttribute("message"); // Clear the message after displaying
            } 
        %>
    </div>
    
 
    
</body>
</html>