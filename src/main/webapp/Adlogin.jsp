<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Css/head&fotter.css">

    <style type="text/css">
        body {
            font-family: 'Hind SemiBold', sans-serif;
            background-image: url('https://plus.unsplash.com/premium_photo-1681223447322-46794b8cdfd5?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-color: #f8f9fa; /* Light grey background */
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        header {
            width: 100%;
            position: fixed;
            top: 0;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1;
        }

        .navdiv {
            padding: 10px 0;
        }

        .navdiv img {
            height: 50px;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            justify-content: center;
        }

        .navbar ul li {
            margin-right: 20px;
        }

        .login-container {
            max-width: 400px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            background-color: #fff;
            margin-top: 100px; /* Prevents overlap with the header */
        }

        .login-container h1 {
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .btn-primary {
            width: 100%;
        }

        .footer-text {
            text-align: center;
            margin-top: 20px;
            color: #6c757d;
        }
    </style>
</head>
<body>
<header>
    <div class="navdiv">
        <div class="logo"><a href="#"><img src="img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
        <nav class="navbar">
            <ul>
                <li><a href="adminhome.jsp">Home</a></li>
                <li><a href="adminmap.jsp">Site Map</a></li>
                <li><a href="GetAllServlet">Upcoming Event Details</a></li> <!--Add a drop downlist here-->
                <li><a href="GetAllServelt">Tour Listings Details</a></li>
                <li><a href="AdminDashboard.jsp">Booking</a></li>
                <li><a href="AdContactUs.jsp">Contact</a></li>
            </ul>
        </nav>
    </div>
</header>

<div class="login-container shadow-lg">
    <h1>Admin Login</h1>
    <form action="AloginServelt" method="post">
        <!-- Username field -->
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username">
        </div>
        <!-- Password field -->
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
        </div>
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
</div>

<!-- Bootstrap JS (optional for interactive components) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
