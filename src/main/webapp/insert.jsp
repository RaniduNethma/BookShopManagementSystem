<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Entry Form</title>
</head>
<body>
	<form action="InsertServlet" method="post">
		<table>
			<tr>
				<td>Name</td>
				<td><input type=text name="name" required></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type=text name="price" required></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><input type=text name="category" required></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><input type=text name="quantity" required></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type=text name="description" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>