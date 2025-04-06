<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reset Password</title>
</head>
<body>

<h2>Reset Password</h2>

<form action="ResetPasswordServlet" method="POST">
    <input type="hidden" name="email" value="<%= request.getParameter("email") %>">
    <input type="text" name="otp" placeholder="Enter OTP" required>
    <input type="password" name="newPassword" placeholder="New Password" required>
    <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
    <button type="submit">Reset Password</button>
</form>

<% 
    String error = request.getParameter("error");
    String success = request.getParameter("success");
    if (error != null) { 
%>
    <p style="color: red;"><%= error %></p>
<% } %>

<% if (success != null) { %>
    <p style="color: green;"><%= success %></p>
<% } %>

</body>
</html>
