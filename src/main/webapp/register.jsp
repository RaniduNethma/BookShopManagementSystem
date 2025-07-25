<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>User Register</title>
	<link rel="stylesheet" href="css/register.css">
</head>
<body>		
	<form action="UserInsertServlet" method="post">
		<table>
			<tr>
				<td>User Name</td>
				<td><input type="text" name="username" required></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstname" required></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastname" required></td>
			</tr>
			<tr>
				<td>Email Address</td>
				<td><input type="email" name="email" required></td>
			</tr>
			<tr>
				<td>Birthday</td>
				<td><input type="date" name="birthday" required></td>
			</tr>
			<tr>
			<tr>
				<td>Phone Number</td>
				<td><input type="tel" maxlength="10" name="phone" required></td>
			</tr>
			<tr>
			<tr>
				<td>Password</td>
				<td><input type=password name="password" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>