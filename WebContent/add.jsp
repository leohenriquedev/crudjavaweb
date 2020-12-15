<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="model.User" %>
<%@ page import="dao.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		User u = new User();
		UserDAO uDAO = new UserDAO();
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		u.setName(name);
		u.setAge(Integer.parseInt(age));
		
		uDAO.insert(u);
		
		response.sendRedirect("index.jsp");
		
	%>
	
</body>
</html>