<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><link rel = "stylesheet" href="Css/menustyle.css" >
<link rel="stylesheet" href="Css/Touers.css">
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 20px;
    }
    h2 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
        font-size: 1.8rem;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 0 auto;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }
    table th, table td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    table th {
        background-color: #28a745;
        color: white;
        font-weight: bold;
    }
    table tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    table tr:hover {
        background-color: #e9e9e9;
    }
    button {
        padding: 8px 12px;
        color: white;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    button:hover {
        background-color: #0056b3;
    }
    button.delete-btn {
        background-color: #dc3545;
    }
    button.delete-btn:hover {
        background-color: #c82333;
    }
    a {
        text-decoration: none;
        color: inherit;
    }
    a button {
        margin-right: 10px;
    }
    form {
        display: inline;
    }
</style>
</head>
<body><div class = "navdiv">
      <div class = "logo"><a href = "home.html"><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
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
<h2>Product Table</h2>
 <a href="insert01.jsp" class="card__button" onclick="openPopup('myPopup1')"
      ><h2>Add Tour</h2></a>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Image</th>
        <th>Location</th>
        <th>Description</th>
        <th>Action</th>
    </tr>
    <c:forEach var="tours" items="${allTours}">
    <tr>
        <td>${tours.id}</td>
        <td>${tours.tourname}</td>
        <td>${tours.price}</td>
        <td>${tours.image}</td>
        <td>${tours.location}</td>
        <td>${tours.description}</td>
        <td><a href ="update01.jsp?id=${tours.id}&tourname=${tours.tourname}&price=${tours.price}&image=${tours.image}&location=${tours.location}&description=${tours.description}">
        <button>Update</button>
        </a>
        
      
                <!-- Delete Button Form -->
                <form action="DeleteServletHash" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="${tours.id}" />
                    <button>Delete</button>
                </form>
            </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>