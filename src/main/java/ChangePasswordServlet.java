import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String userEmail = (String) session.getAttribute("username");

        // Redirect if not logged in
        if (userEmail == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // Validate inputs
        if (oldPassword == null || oldPassword.trim().isEmpty() ||
            newPassword == null || newPassword.trim().isEmpty() ||
            confirmPassword == null || confirmPassword.trim().isEmpty()) {
            response.sendRedirect("Pages/ChangePassword.jsp?error=All fields are required!");
            return;
        }

        // Check password match
        if (!newPassword.equals(confirmPassword)) {
            response.sendRedirect("Pages/ChangePassword.jsp?error=New password and confirm password do not match!");
            return;
        }

        // Check if new password is different from old password
        if (newPassword.equals(oldPassword)) {
            response.sendRedirect("Pages/ChangePassword.jsp?error=New password must be different from old password!");
            return;
        }

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Database Connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");

            // Check if old password is correct
            String checkQuery = "SELECT password FROM register WHERE email=?";
            stmt = conn.prepareStatement(checkQuery);
            stmt.setString(1, userEmail);
            rs = stmt.executeQuery();

            if (rs.next()) {
                String storedPassword = rs.getString("password");

                if (!storedPassword.equals(oldPassword)) {
                    response.sendRedirect("Pages/ChangePassword.jsp?error=Incorrect old password!");
                    return;
                }
            } else {
                response.sendRedirect("Pages/ChangePassword.jsp?error=User not found!");
                return;
            }

            // Update the password
            String updateQuery = "UPDATE register SET password=?, conf_password=? WHERE email=?";
            stmt = conn.prepareStatement(updateQuery);
            stmt.setString(1, newPassword);
            stmt.setString(2, confirmPassword);
            stmt.setString(3, userEmail);
            
            int rowsAffected = stmt.executeUpdate();
            
            if (rowsAffected > 0) {
                response.sendRedirect("Pages/Profile.jsp?success=Password updated successfully!");
            } else {
                response.sendRedirect("Pages/ChangePassword.jsp?error=Failed to update password!");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Pages/ChangePassword.jsp?error=An error occurred. Please try again.");
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}