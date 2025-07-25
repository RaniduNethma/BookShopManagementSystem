<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Book Details</title>
	<link rel="stylesheet" href="css/display.css" />
</head>
<body>
	<div class="top-bar">
    	<a href="profile.jsp"><button class="profile-btn">👤 My Profile</button></a>
	</div>
	
	<h2>PRODUCT TABLE</h2>
	
	<input type="text" id="searchInput" placeholder="Search..." />
	
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Category</th>
			<th>Quantity</th>
			<th>Description</th>
			<th>Action</th>
		</tr>
		<c:forEach var="book" items="${allBooks}">
		<tr>
			<td>${book.id}</td>
			<td>${book.name}</td>
			<td>${book.price}</td>
			<td>${book.category}</td>
			<td>${book.quantity}</td>
			<td>${book.description}</td>
			<td>
				<a href="update.jsp?id=${book.id}&name=${book.name}&price=${book.price}&category=${book.category}&quantity=${book.quantity}&description=${book.description}">
					<button id=editbutton>Edit</button>
				</a>
				
				<form action="DeleteServlet" method="post">
				<input type="hidden" name="id" value="${book.id}" />
					<button id=deletebutton onclick="return confirm('Are you sure you want to delete this book?');">Delete</button>
				</form>
			</td>
		</tr>
		</c:forEach>
		<c:if test="${empty allBooks}">
    		<tr>
    			<td colspan="6">No books found.</td>
    		</tr>
		</c:if>
	</table>
	
	<script>
		function filterTable(){
			var input = document.getElementById("searchInput");
			var filter = input.value.toUpperCase();
			var table = document.querySelector("table");
			var tr = table.getElementsByTagName("tr");
			var textValue;
			
			for(var i=0; i<tr.length; i++){
				var td = tr[i].getElementsByTagName("td");
				for(var j=0; j<td.length; j++){
					if(td[j]){
						textValue = td[j].textContent || td[j].innerText;
						if(textValue.toUpperCase().indexOf(filter) > -1){
							tr[i].style.display = "";
							break;
						}
						else{
							tr[i].style.display = "none";
						}
					}
				}
			}
		}
		document.getElementById("searchInput").addEventListener("input", filterTable);
	</script>
</body>
</html>