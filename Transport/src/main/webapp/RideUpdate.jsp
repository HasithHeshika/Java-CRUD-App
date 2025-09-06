<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
    String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String contact = request.getParameter("number");
	String pickup_location = request.getParameter("pickup_location");
	String drop_location = request.getParameter("drop_location");

%>
	<form action="UpdateServlet" method="post">
		<label for="id">ID:</label><br>
        <input type="text" id="id" name="id" value ="<%=id%>"readonly><br><br>
		
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"value ="<%=name%>" required><br><br>

        <label for="contact">Contact:</label><br>
        <input type="text" id="contact" name="number"value ="<%=contact%>" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" value ="<%=email%>"required><br><br>

        <label for="pickup_location">Pickup Location:</label><br>
        <input type="text" id="pickup_location" name="pickup_location"value ="<%=pickup_location%>" required><br><br>

        <label for="drop_location">Drop Location:</label><br>
        <input type="text" id="drop_location" name="drop_location"value ="<%=drop_location%>" required><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>