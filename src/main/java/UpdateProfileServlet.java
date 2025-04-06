import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String newPassword = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");

        String jdbcURL = "jdbc:mysql://localhost:3306/skill_Elevate";
        String dbUser = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String query;
            PreparedStatement stmt;

            if (newPassword != null && !newPassword.isEmpty() && newPassword.equals(confirmPassword)) {
                query = "UPDATE register SET name=?, mobile=?, password=? WHERE id=?";
                stmt = conn.prepareStatement(query);
                stmt.setString(1, name);
                stmt.setString(2, mobile);
                stmt.setString(3, newPassword);  // Ideally, hash the password before storing it
                stmt.setInt(4, id);
            } else {
                query = "UPDATE register SET name=?, mobile=? WHERE id=?";
                stmt = conn.prepareStatement(query);
                stmt.setString(1, name);
                stmt.setString(2, mobile);
                stmt.setInt(3, id);
            }

            int rowsUpdated = stmt.executeUpdate();
            stmt.close();
            conn.close();

            if (rowsUpdated > 0) {
                response.sendRedirect("Pages/Profile.jsp?success=Profile updated successfully");
            } else {
                response.sendRedirect("Pages/Profile.jsp?error=Failed to update profile");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Pages/Profile.jsp?error=Database error: " + e.getMessage());
        }
    }
}
