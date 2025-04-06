<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String password = request.getParameter("password");
    String conf_password = request.getParameter("conf_password");


    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");

        if (id == null || id.isEmpty()) {
            // Insert new user
            PreparedStatement ps = con.prepareStatement("INSERT INTO register (name, email, mobile, password, conf_password) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, mobile);
            ps.setString(4, password);
            ps.setString(5, conf_password);
            ps.executeUpdate();
        } else {
            // Update existing user
            PreparedStatement ps = con.prepareStatement("UPDATE register SET name=?, email=? WHERE id=?");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setInt(3, Integer.parseInt(id));
            ps.executeUpdate();
        }
        con.close();
        response.sendRedirect("user_management.jsp");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
