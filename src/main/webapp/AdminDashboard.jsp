<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="onlinetourguide.Booking" %>
<%@ page import="onlinetourguide.BookingDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --background-color: #f4f4f4; /* Optional: Keep this if you want a fallback color */
            --card-background: rgba(255, 255, 255, 0.9); /* Make the card slightly transparent */
            --text-color: #333333;
            --text-light: #777777;
            --danger-color: #e74c3c;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

body {
    font-family: 'Arial', sans-serif;
    background-image: url('img/new.jpg'); /* Path to your image */
    background-size: cover; /* Cover the entire viewport */
    background-repeat: no-repeat; /* Don't repeat the image */
    background-position: center; /* Center the image */
    min-height: 100vh; /* Ensure body takes at least full viewport height */
    color: var(--text-color);
    line-height: 1.6;

    margin: 0; /* Remove default margin */
}


        .container {
            max-width: 1200px;
            margin: 0 auto;
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

        .table-responsive {
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: var(--primary-color);
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f8f8f8;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .action-links a {
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 4px;
            color: white;
            font-weight: bold;
            margin-right: 5px;
            display: inline-block;
        }

        .delete-link {
            background-color: var(--danger-color);
        }

        .update-link {
            background-color: var(--secondary-color);
        }

        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }

            table {
                font-size: 14px;
            }

            th, td {
                padding: 8px;
            }
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
        <h1>Admin Dashboard</h1>
        <div class="table-responsive">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Check-In</th>
                        <th>Check-Out</th>
                        <th>Room</th>
                        <th>Guests</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        BookingDAO bookingDAO = new BookingDAO();
                        List<Booking> bookings = bookingDAO.getAllBookings();
                        for (Booking booking : bookings) {
                    %>
                    <tr>
                        <td><%= booking.getBookingId() %></td>
                        <td><%= booking.getFullName() %></td>
                        <td><%= booking.getEmail() %></td>
                        <td><%= booking.getPhone() %></td>
                        <td><%= booking.getCheckInDate() %></td>
                        <td><%= booking.getCheckOutDate() %></td>
                        <td><%= booking.getRoomType() %></td>
                        <td><%= booking.getNumGuests() %></td>
                        <td class="action-links">
                            <a href="DeleteBookingServlet?bookingId=<%= booking.getBookingId() %>" class="delete-link">Delete</a>
                            <a href="UpdateBookingFormServlet?bookingId=<%= booking.getBookingId() %>" class="update-link">Update</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
