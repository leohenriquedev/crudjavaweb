<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
<link rel="stylesheet" type="text/css" href="./resources/bootstrap/css/bootstrap.min.css"></link>
</head>
<body>

	<div class="container col-md-6 mt-5">	
		<form action="UserServlet" method="POST">
			<div class="form-group">
				<input type="hidden" name="method" value="insert" required>
				<label>Name</label>
				<input type="text" name="name" class="form-control" required>
				<label class="mt-3">Age</label>
				<input type="number" name="age" class="form-control" required>
			</div>
			<input type="submit" value="Send" class="btn btn-outline-success mt-3">
		</form>
	</div>

</body>
</html>