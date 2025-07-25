<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <link rel="stylesheet" href="css/profile.css">
</head>
<body>        
    <div class="profile-card">
        <h1>User Profile</h1>

        <table>
            <tr><th>User ID</th><td>${user.id}</td></tr>
            <tr><th>Username</th><td>${user.username}</td></tr>
            <tr><th>First Name</th><td>${user.firstname}</td></tr>
            <tr><th>Last Name</th><td>${user.lastname}</td></tr>
            <tr><th>Email</th><td>${user.email}</td></tr>
            <tr><th>Birthday</th><td>${user.birthday}</td></tr>
            <tr><th>Phone Number</th><td>${user.phone}</td></tr>
        </table>

        <div class="button-group">
            <a href="GetAllServlet"><button id="dashboardbutton">Back to Dashboard</button></a>
            <a href="updateprofile.jsp?id=${user.id}&username=${user.username}&firstname=${user.firstname}&lastname=${user.lastname}&email=${user.email}&birthday=${user.birthday}&phone=${user.phone}">
                <button id="editbutton">Edit</button>
            </a>

            <form action="DeleteUserServlet" method="post" onsubmit="return confirm('Are you sure you want to delete your profile?');">
                <input type="hidden" name="id" value="${user.id}" />
                <button id="deletebutton">Delete</button>
            </form>
        </div>
    </div>
</body>
</html>