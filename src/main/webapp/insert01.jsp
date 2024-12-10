<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tour Form</title><link rel = "stylesheet" href="Css/menustyle.css" >
<link rel="stylesheet" href="Css/Touers.css">
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 10px;
        align-items: center;
        justify-content: center;
        
    
    }
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 12px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        width: 100%;
        max-width: 500px;
        text-align: center;
    }
    form:hover {
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        transform: translateY(-5px);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
        font-size: 1.8rem;
        font-weight: bold;
    }
    img {
        max-width: 100%;
        border-radius: 10px;
        margin-bottom: 20px;
    }
    label {
        font-weight: bold;
        color: #555;
    }
    input[type="text"],
    input[type="number"],
    input[type="file"],
    textarea {
        width: 100%;
        padding: 12px;
        margin: 10px 0 20px 0;
        border: 2px solid #ddd;
        border-radius: 8px;
        font-size: 16px;
        transition: border-color 0.3s;
    }
    input[type="text"]:focus,
    input[type="number"]:focus,
    input[type="file"]:focus,
    textarea:focus {
        border-color: #28a745;
        outline: none;
    }
    textarea {
        height: 100px;
        resize: vertical;
    }
    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #218838;
    }
    input[type="submit"]:active {
        background-color: #1e7e34;
        transform: scale(0.98);
    }
    table {
        width: 100%;
    }
    table tr td {
        padding: 10px 0;
    }
</style>
</head>

<body><div class = "navdiv">
      <div class = "logo"><a href = "home.html"><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
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


    <form action="TourServlet" method="post" enctype="multipart/form-data">
    <table>
        <h2>Tour Details</h2>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="tourname" required></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="number" name="price" required></td>
        </tr>
        <tr>
            <td>Image:</td>
            <td><input type="file" name="image" required></td>
        </tr>
        <tr>
            <td>Location:</td>
            <td><input type="text" name="location" required></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td><textarea name="description" required></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>


</body>
</html>