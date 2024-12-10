<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Tour</title><link rel = "stylesheet" href="Css/menustyle.css" >
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
        padding: 20px;
    }
    
    form {
        background-color: #fff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        width: 100%;
        max-width: 500px;
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
<body>
<div class = "navdiv">
      <div class = "logo"><a href = "home.html"><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
      <nav class = "navbar">
          <ul>
              <li><a href = "adminhome.jsp">Home</a></li>
              <li><a href = "map.jsp">Site Map</a></li>
              <li><a href = "GetAllServlet">Upcoming Event</a></li> <!--Add a drop downlist here-->
              <li><a href = "GetAllServelt">Tour Listings</a></li>
              <li><a href = "AdminDashboard.jsp">Booking</a></li>
              
              <li><a href = "AdContactUs.jsp">Contact </a></li>
              

          </ul>
      </nav>
  </div>

<%
String id = request.getParameter("id");
String tourname = request.getParameter("tourname");
String price = request.getParameter("price");
String image = request.getParameter("image");
String location = request.getParameter("location");
String description = request.getParameter("description");
%>

<form action="UpdateServlet01" method="post" enctype="multipart/form-data"> <!-- Important to include enctype="multipart/form-data" for file uploads -->
    <h2>Update Tour</h2>
    <table>
        <tr>
            <td>ID:</td>
            <td><input type="text" name="id" value="<%=id%>" readonly></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="tourname" value="<%=tourname%>" required></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="number" id="price" name="price" value="<%=price%>" required></td>
        </tr>
        <tr>
            <td>Current Image:</td>
            <td><img src="<%=image%>" alt="Tour Image" style="max-width:100px; max-height:100px;"></td>
        </tr>
        <tr>
            <td>New Image:</td>
            <td><input type="file" name="image"></td> <!-- No value attribute here -->
        </tr>
        <input type="hidden" name="existingImage" value="<%=image%>"> <!-- Hidden field to retain existing image if no new image is uploaded -->
        <tr>
            <td>Location:</td>
            <td><input type="text" name="location" value="<%=location%>" required></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td><textarea id="description" name="description" required><%=description%></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>

</body>
</html>
