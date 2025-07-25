<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>User Login</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	<div>
		<h1>LibraCore</h1>
	</div>
	<div class="container">
		<form action="LoginServlet" method="post">
			<table>
				<tr>
					<td>Username</td>
					<td><input type="text" name="username" required></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" required></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Login"></td>
				</tr>
				<tr><td>Don't have an account</td></tr>
			</table>
		</form>
		<td><a href="register.jsp"><button id="signup-btn">Signup</button></a></td>
	</div>
	
</body>
</html>