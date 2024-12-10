<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Upcoming Event</title>
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"> <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="Css/reg.css">
    <link rel="stylesheet" href="Css/head&fotter.css">
     <!-- Link to external CSS -->
</head>
<body>
    <div class = "navdiv">
        <div class = "logo"><a href = ""><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
        <nav class = "navbar">
                <ul>
                    <li><a href = "adminhome.jsp">Home</a></li>
                    <li><a href = "map.jsp">Site Map</a></li>
                    <li><a href = "GetAllServlet">Upcoming Event</a></li> <!--Add a drop downlist here-->
                    <li><a href = "GetALLServelt">Tour Listings</a></li>
                    <li><a href = "AdminDashboard.jsp">Booking </a></li>
                    
                    <li><a href = "AdContactUs.jsp">Contact </a></li>
                   
    
                </ul>
        </nav>
      </div>
      <div class = "maindiv"> 
    
<div class="container">
    <div class="form-container">
        <h1 class="text-center"><i class="fas fa-calendar-plus"></i> Create Upcoming Event</h1>
        <form action="InsertServlet" method="POST">
            <div class="form-group">
               <label for="eventName">Event Name</label>
<input type="text" id="eventName" name="eventname" class="form-control" 
       placeholder="Enter event name" pattern="[A-Za-z\s]+" 
       title="Only letters and spaces are allowed" required>

            </div>

            <div class="form-group">
                <label for="location">Location</label>
                <input type="text" id="location" name="location" class="form-control" placeholder="Enter location" required>
            </div>
            

            <div class="form-group">
                <label for="eventDate">Event Date</label>
                <input type="date" id="eventDate" name="date" class="form-control" required>
            </div>

            <div class="form-group">
               <label for="description">Event Description</label>
<textarea id="description" name="description" class="form-control" rows="5" 
          placeholder="Enter event description" minlength="10" maxlength="500" 
          title="Description should be between 10 and 500 characters" required></textarea>


            </div>

            <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Create Upcoming Event</button>
        </form>
    </div>
    <div class="image-container">
        <!-- Optional text overlay on image -->
        <img src="img/a-surfer-shows-off-his-talent.jpg" alt="Event Planning" class="img-fluid" style="border-radius: 10px;">
    </div> <!-- This div is for the background image -->
</div>
</div>


<!-- Bootstrap JS and dependencies (optional, for interactive components) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
