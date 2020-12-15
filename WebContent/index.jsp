<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="model.User" %>
<%@ page import="dao.UserDAO" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello World</title>
</head>
<body>

	<form action="add.jsp" method="POST">
		Name: <input type="text" name="name">
		Age: <input type="number" name="age">
		<input type="submit" value="Send">
	</form>
	
	<br>
	
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Age</th>
				<th>Actions</th>
			</tr>
		</thead>
		
		<tbody>
		
		<%
			UserDAO uDAO = new UserDAO();
			ArrayList<User> list = uDAO.read();
			
			for(int i = 0; i < list.size(); i++) {
		%>
		
		<tr>
			<td><%= list.get(i).getId() %></td>
			<td><%= list.get(i).getName() %></td>
			<td><%= list.get(i).getAge() %></td>
			<td>
				<a href="edit.jsp?id=<%= list.get(i).getId() %>">Edit</a>
				<a href="delete.jsp?id=<%= list.get(i).getId() %>">Delete</a>
			</td>
		</tr>
		
	
		<% 
			} 
		%>
				
		</tbody>
	</table>
</body>

</html>