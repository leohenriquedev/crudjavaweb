<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="dao.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>	
	
	<%
		UserDAO uDAO = new UserDAO();
		String id = request.getParameter("id");
		uDAO.delete(Integer.parseInt(id));
		response.sendRedirect("index.jsp");	
	%>

</body>
</html>