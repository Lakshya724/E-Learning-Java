<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");

    if (id != null && !id.isEmpty()) {
        String url = "jdbc:mysql://localhost:3306/skill_Elevate";
        String user = "root";
        String password = "";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            String sql = "DELETE FROM register WHERE id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, Integer.parseInt(id));

            int rowsDeleted = pstmt.executeUpdate();
            if (rowsDeleted > 0) {
                response.sendRedirect("user_management.jsp"); // Redirect back to user list
            } else {
                out.println("<script>alert('User not found or could not be deleted.'); window.location='usermanagement.jsp';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('Error deleting user: " + e.getMessage() + "'); window.location='usermanagement.jsp';</script>");
        } finally {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
    } else {
        out.println("<script>alert('Invalid User ID.'); window.location='usermanagement.jsp';</script>");
    }
%>
