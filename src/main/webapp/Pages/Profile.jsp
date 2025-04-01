<%@ page import="java.sql.*, jakarta.servlet.http.*" %>

<%
    // Database Connection
    String jdbcURL = "jdbc:mysql://localhost:3306/skill_Elevate";
    String dbUser = "root";
    String dbPassword = "";

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
   
    int userId = 1; 
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");
        
        String query = "SELECT * FROM users WHERE id=?";
        stmt = conn.prepareStatement(query);
        stmt.setInt(1, userId);
        rs = stmt.executeQuery();

        if (rs.next()) {
%>
<html>
<head>
    <title>My Profile</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        .container { width: 50%; margin: auto; padding: 20px; background: #f5f5f5; border-radius: 8px; }
        .input-box { width: 100%; padding: 10px; margin: 10px 0; border-radius: 5px; border: 1px solid #ddd; }
        .btn { background: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; }
        .btn:hover { background: #0056b3; }
    </style>
</head>
<body>

<div class="container">
    <h2>My Profile</h2>
    <form action="userprofileservlet" method="post">
        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
        <input type="text" class="input-box" name="username" value="<%= rs.getString("username") %>" required>
        <input type="email" class="input-box" name="email" value="<%= rs.getString("email") %>" required>
        <input type="text" class="input-box" name="phone" value="<%= rs.getString("phone") %>">
        <textarea class="input-box" name="address"><%= rs.getString("address") %></textarea>
        <button type="submit" class="btn">Update Profile</button>
    </form>
</div>

</body>
</html>
<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>
