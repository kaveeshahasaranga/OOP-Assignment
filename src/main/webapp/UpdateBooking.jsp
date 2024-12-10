<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Booking</title>
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --background-color: #f4f4f4;
            --card-background: #ffffff;
            --text-color: #333333;
            --text-light: #777777;
            --border-color: #e0e0e0;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            line-height: 1.6;
           
        }

        .container {
            max-width: 600px;
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

        form {
            display: grid;
            gap: 20px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        input, select {
            width: 100%;
            padding: 10px;
            border: 1px solid var(--border-color);
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: var(--primary-color);
            color: white;
            border: none;
            cursor: pointer;
            padding: 12px;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

  /* navigation bar*/
.navdiv{
    width: 100%;
    height: 70px;
    top: 0;
    left: 0;
    margin-bottom: 20px;
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
                <li><a href = "adminhome.jsp">Home</a></li>
                <li><a href = "adminmap.jsp">Site Map</a></li>
                <li><a href = "GetAllServlet">Upcoming Event</a></li> <!--Add a drop downlist here-->
                <li><a href = "GetAllServelt">Tour Listings</a></li>
                <li><a href = "AdminDashboard.jsp">Booking </a></li>
                
                <li><a href = "AdContactUs.jsp">Contact </a></li>
                

            </ul>
    </nav>
  </div>

    <div class="container">
        <h1>Update Booking</h1>
        <form action="UpdateBookingServlet" method="post">
            <input type="hidden" name="bookingId" value="${booking.bookingId}">
            
            <div class="form-group">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" value="${booking.fullName}" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${booking.email}" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" value="${booking.phone}" required>
            </div>

            <div class="form-group">
                <label for="checkInDate">Check-In Date:</label>
                <input type="date" id="checkInDate" name="checkInDate" value="${booking.checkInDate}" required>
            </div>

            <div class="form-group">
                <label for="checkOutDate">Check-Out Date:</label>
                <input type="date" id="checkOutDate" name="checkOutDate" value="${booking.checkOutDate}" required>
            </div>

            <div class="form-group">
                <label for="roomType">Room Type:</label>
                <select id="roomType" name="roomType">
                    <option value="single" ${booking.roomType == 'single' ? 'selected' : ''}>Single</option>
                    <option value="double" ${booking.roomType == 'double' ? 'selected' : ''}>Double</option>
                    <option value="suite" ${booking.roomType == 'suite' ? 'selected' : ''}>Suite</option>
                </select>
            </div>

            <div class="form-group">
                <label for="numGuests">Number of Guests:</label>
                <input type="number" id="numGuests" name="numGuests" value="${booking.numGuests}" required min="1">
            </div>

            <input type="submit" value="Update Booking">
            <input type="button" value="Delete Booking" onclick="confirmDelete(${booking.bookingId})" style="background-color: #e74c3c; color: white; border: none; cursor: pointer; padding: 12px; font-size: 18px;">
        </form>
    </div>
    
    <script>
    function confirmDelete(bookingId) {
        if (confirm("Are you sure you want to delete this booking?")) {
            window.location.href = 'DeleteBookingServlet?bookingId=' + bookingId;
        }
    }
</script>

</body>
</html>