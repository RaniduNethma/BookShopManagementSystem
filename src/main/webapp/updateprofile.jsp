<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Update Profile Details</title>
	<link rel="stylesheet" href="css/updateprofile.css">
</head>
<body>
	<h1>Update Profile Details</h1>
	
	<%
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthday");
		String phone = request.getParameter("phone");
	%>
	
	<form action="UpdateProfileServlet" method="post">
		<table>
			<tr>
				<td>Id</td>
				<td><input type=text name="id" value="<%=id%>" readonly></td>
			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" value="<%=username%>" required></td>
			</tr>
			<tr>
				<td>Firstname</td>
				<td><input type="text" name="firstname" value="<%=firstname%>" required></td>
			</tr>
			<tr>
				<td>Lastname</td>
				<td><input type="text" name="lastname" value="<%=lastname%>" required></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" value="<%=email%>" required></td>
			</tr>
			<tr>
				<td>Birthday</td>
				<td><input type="date" name="birthday" value="<%=birthday%>" required></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><input type="tel" maxlength="10" name="phone" value="<%=phone%>" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>