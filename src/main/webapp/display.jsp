<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
</head>
<body>
	<h2>Product table</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Category</th>
			<th>Quantity</th>
			<th>Description</th>
		</tr>
		<c:forEach var="books" items="${allBooks}">
			<tr>
				<td>${book.id}</td>
				<td>${book.name}</td>
				<td>${book.price}</td>
				<td>${book.catagory}</td>
				<td>${book.quantity}</td>
				<td>${book.description}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>