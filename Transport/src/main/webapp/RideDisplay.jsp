<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ride Table</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        padding: 30px;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    table {
        width: 90%;
        margin: auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
    }

    th, td {
        padding: 12px;
        text-align: center;
        border: 1px solid #ccc;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e0f7fa;
    }
</style>
</head>
<body>
    <h2>Ride Table</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Contact</th>
            <th>Email</th>
            <th>Pickup Location</th>
            <th>DropOff Location</th>
             <th>Action</th>
        </tr>
        <c:forEach var="ride" items="${allRides}">
            <tr>
                <td>${ride.id}</td>
                <td>${ride.name}</td>
                <td>${ride.contact}</td>
                <td>${ride.email}</td>
                <td>${ride.pickup_location}</td>
                <td>${ride.drop_location}</td>
                <td>
                	<a href="RideUpdate.jsp?id=${ride.id}&name=${ride.name}&contact=${ride.contact}&email=${ride.email}&pickup_location=${ride.pickup_location}&drop_location=${ride.drop_location}">
                	<button>Update</button><br><br>
                	</a>
                	
                	<form action="DeleteServlet"method="post">
                	<input type="hidden" name="id" value="${ride.id}"/>
                		<button>Delete</button>
                	
                	</form>
                
                </td>
                
            </tr>
        </c:forEach>
    </table>
</body>
</html>
