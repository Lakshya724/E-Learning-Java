<%@ page import="java.sql.*, jakarta.servlet.http.*" %>
<%
    String userEmail = (String) session.getAttribute("username");
    String successMessage = request.getParameter("success");
    String errorMessage = request.getParameter("error");

    if (userEmail == null) {
        response.sendRedirect("Login.jsp");
        return;
    }

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");

        String query = "SELECT * FROM register WHERE email=?";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, userEmail);
        rs = stmt.executeQuery();

        if (rs.next()) {
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile | Skill Elevate</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4361ee;
            --secondary-color: #3f37c9;
            --light-color: #f8f9fa;
            --dark-color: #212529;
            --success-color: #4bb543;
            --error-color: #ff3333;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f7fa;
            color: var(--dark-color);
            line-height: 1.6;
        }
        
        .profile-container {
            max-width: 600px;
            margin: 2rem auto;
            padding: 2.5rem;
            background: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
        }
        
        .profile-header {
            text-align: center;
            margin-bottom: 2rem;
            position: relative;
        }
        
        .profile-header h2 {
            color: var(--primary-color);
            font-size: 1.8rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }
        
        .profile-header::after {
            content: '';
            display: block;
            width: 60px;
            height: 3px;
            background: var(--primary-color);
            margin: 0.8rem auto;
            border-radius: 3px;
        }
        
        .form-group {
            margin-bottom: 1.5rem;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: var(--dark-color);
        }
        
        .form-control {
            width: 100%;
            padding: 0.8rem 1rem;
            font-size: 1rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: all 0.3s ease;
            font-family: 'Poppins', sans-serif;
        }
        
        .form-control:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.2);
        }
        
        .form-control[readonly] {
            background-color: #f5f5f5;
            cursor: not-allowed;
        }
        
        .btn {
            display: inline-block;
            background: var(--primary-color);
            color: white;
            padding: 0.8rem 1.8rem;
            font-size: 1rem;
            font-weight: 500;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-align: center;
            width: 100%;
        }
        
        .btn:hover {
            background: var(--secondary-color);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .alert {
            padding: 0.8rem 1rem;
            margin-bottom: 1.5rem;
            border-radius: 8px;
            font-weight: 500;
        }
        
        .alert-success {
            background-color: rgba(75, 181, 67, 0.2);
            color: var(--success-color);
            border: 1px solid rgba(75, 181, 67, 0.3);
        }
        
        .alert-error {
            background-color: rgba(255, 51, 51, 0.1);
            color: var(--error-color);
            border: 1px solid rgba(255, 51, 51, 0.2);
        }
           
        .divider {
            margin: 1.5rem 0;
            border-bottom: 1px solid var(--border-color);
        }
        
        .back-link {
            text-align: center;
            font-size: 0.9rem;
            color: var(--dark-gray);
        }
        
        .back-link a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
        }
        
        .back-link a:hover {
            text-decoration: underline;
        }
        
        @media (max-width: 768px) {
            .profile-container {
                margin: 1rem;
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <div class="profile-header">
            <h2>My Profile</h2>
            <p>Manage your account information</p>
        </div>

        <% if (successMessage != null) { %>
            <div class="alert alert-success">
                <%= successMessage %>
            </div>
        <% } %>

        <% if (errorMessage != null) { %>
            <div class="alert alert-error">
                <%= errorMessage %>
            </div>
        <% } %>

        <form action="<%=request.getContextPath()%>/UpdateProfileServlet" method="POST">
            <input type="hidden" name="id" value="<%= rs.getInt("id") %>">

            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" class="form-control" name="name" 
                       value="<%= rs.getString("name") %>" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" class="form-control" name="email" 
                       value="<%= rs.getString("email") %>" readonly>
            </div>

            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input type="text" id="mobile" class="form-control" name="mobile" 
                       value="<%= rs.getString("mobile") %>" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="text" id="password" class="form-control" name="password" 
                       value="<%= rs.getString("password") %>" readonly>
            </div>

            <button type="submit" class="btn">Update Profile</button>
                <div class="divider"></div>
        
        <p class="back-link">Back to <a href="Index.jsp">Home</a></p>
    </div>
        </form>
    </div>
</body>
</html>
<%
        } else {
            response.getWriter().println("<div class='alert alert-error'>Error: User not found!</div>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.getWriter().println("<div class='alert alert-error'>Database Error: " + e.getMessage() + "</div>");
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>