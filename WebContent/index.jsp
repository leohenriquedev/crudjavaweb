<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="model.bean.User" %>
<%@ page import="model.dao.UserDAO" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users</title>
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.min.css"></link>
</head>
<body>

	<div class="container col-md-6 mt-5">	
		<a class="btn btn-success" href="add.jsp">New</a>
	
		<table class="table mt-5">
			<thead class="thead-dark">
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
					
					<td class="mx-auto">
						<a class="btn btn-secondary" href="edit.jsp?id=<%= list.get(i).getId() %>">Edit</a>
						<a class="btn btn-danger" href="UserServlet?method=delete&id=<%= list.get(i).getId() %>">Delete</a>
					</td>
				</tr>
			
				<% 
					}
				%>
					
			</tbody>
		</table>
	</div>
	
</body>

</html>