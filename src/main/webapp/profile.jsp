<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
</head>
<body>
	<h1>User Profile</h1>
	
	<h2>User Id : ${user.id}</h2>
	<h2>Username : ${user.username}</h2>
	<h2>First Name : ${user.firstname}</h2>
	<h2>Last Name : ${user.lastname}</h2>
	<h2>Email : ${user.email}</h2>
	<h2>Birthday : ${user.birthday}</h2>
	<h2>Phone Number : ${user.phone}</h2>
	

	<a href="updateprofile.jsp?id=${user.id}&username=${user.username}&firstname=${user.firstname}&lastname=${user.lastname}&email=${user.email}&birthday=${user.birthday}&phone=${user.phone}">
		<button>Edit</button>
	</a>
				
	<form action="DeleteUserServlet" method="post">
		<input type="hidden" name="id" value="${user.id}" />
	<button>Delete</button>
	</form>
</body>
</html>