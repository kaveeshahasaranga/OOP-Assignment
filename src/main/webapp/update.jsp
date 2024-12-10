<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Upcoming Event</title>
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="Css/update.css">
    <link rel="stylesheet" href="Css/head&fotter.css"> <!-- Link to external CSS -->
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
    
      <div class = "maindiv">
        <%
String id = request.getParameter("id");
String eventname = request.getParameter("eventname");
String location = request.getParameter("location");
String date = request.getParameter("date");
String description = request.getParameter("description");

%>

<div class="background-image">
    <div class="container mt-5">
        <h1 class="text-center mb-4">Update Upcoming Event</h1>
        <form action="UpdateServlet" method="POST" class="p-4 border rounded shadow-sm bg-light">
            <!-- Event ID -->
            <div class="form-group">
                <label for="id">ID</label>
                <input type="text" id="id" name="id" class="form-control" value="<%= id %>" readonly>
            </div>
            
            <!-- Event Name -->
            <label for="eventName">Event Name</label>
<input type="text" id="eventName" name="eventname" class="form-control" 
       placeholder="Enter event name" pattern="[A-Za-z\s]+" 
       title="Only letters and spaces are allowed" required>


            <!-- Event Location -->
            <div class="form-group">
                <label for="location">Location</label>
                <input type="text" id="location" name="location" class="form-control" placeholder="Enter location" value="<%= location %>" required>
            </div>

            <!-- Event Date -->
            <div class="form-group">
                <label for="eventDate">Event Date</label>
                <input type="date" id="eventDate" name="date" class="form-control" value="<%= date %>" required>
            </div>

            <!-- Event Description -->
            <div class="form-group">
                <label for="description">Event Description</label>
                <textarea id="description" name="description" class="form-control" rows="5" placeholder="Enter event description" required><%= description %></textarea>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary btn-block">Update Event Details</button>
        </form>
    </div>
</div>
</div>

<!-- Bootstrap JS and dependencies (optional) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
