<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    int courseId = Integer.parseInt(request.getParameter("course_id"));
    String courseName = request.getParameter("course_name");
    String category = request.getParameter("category");
    String professorName = request.getParameter("professor_name");
    String description = request.getParameter("description");

    Connection conn = null;
    PreparedStatement ps = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");

        String sql = "UPDATE Courses SET course_name=?, category=?, professor_name=?, description=? WHERE course_id=?";
        ps = conn.prepareStatement(sql);
        ps.setString(1, courseName);
        ps.setString(2, category);
        ps.setString(3, professorName);
        ps.setString(4, description);
        ps.setInt(5, courseId);

        int rowsUpdated = ps.executeUpdate();

        if (rowsUpdated > 0) {
%>
            <script>
                alert("Course updated successfully!");
                window.location.href = "Admin_course.jsp"; // Redirect back to the course list
            </script>
<%
        } else {
%>
            <script>
                alert("Course update failed.");
                window.history.back();
            </script>
<%
        }

    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
%>
