<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <style>
        /* Your styles here */
    </style>
</head>
<body>
    <h2>Reset Password</h2>
    <form action="ResetPasswordServlet" method="post">
        <input type="hidden" name="token" value="<%= request.getParameter("token") %>">
        <label for="newPassword">New Password:</label>
        <input type="password" name="newPassword" required><br><br>
        <button type="submit">Reset Password</button>
    </form>
</body>
</html>
