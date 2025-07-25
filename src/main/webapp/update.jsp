<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Update Data</title>
	<link rel="stylesheet" href="css/update.css">
</head>
<body>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String category = request.getParameter("category");
		String quantity = request.getParameter("quantity");
		String description = request.getParameter("description");
	%>
	
	<form action="UpdateServlet" method="post">
		<table>
			<tr>
				<td>Id</td>
				<td><input type=text name="id" value="<%=id%>" readonly></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type=text name="name" value="<%=name%>" required></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type=text name="price" value="<%=price%>" required></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><input type=text name="category" value="<%=category%>" required></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><input type=text name="quantity" value="<%=quantity%>" required></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type=text name="description" value="<%=description%>" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>