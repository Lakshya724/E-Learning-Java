<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String idParam = request.getParameter("id");

    if (idParam != null) {
        int courseId = Integer.parseInt(idParam);

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");

            String sql = "DELETE FROM Courses WHERE course_id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, courseId);

            int rowsDeleted = stmt.executeUpdate();

            if (rowsDeleted > 0) {
%>
<script>
    alert("Course deleted successfully!");
    window.location.href = "Admin_course.jsp"; // redirect to course list
</script>
<%
            } else {
%>
<script>
    alert("Course not found or could not be deleted.");
    window.location.href = "Admin_course.jsp";
</script>
<%
            }

        } catch (Exception e) {
%>
<script>
    alert("Error: <%= e.getMessage() %>");
    window.location.href = "Course_Table.jsp";
</script>
<%
        } finally {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    } else {
%>
<script>
    alert("Invalid Course ID.");
    window.location.href = "Course_Table.jsp";
</script>
<%
    }
%>
