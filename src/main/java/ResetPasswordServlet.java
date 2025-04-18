import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String resetToken = request.getParameter("token");
        String newPassword = request.getParameter("newPassword");

        // Validate the reset token
        if (isValidResetToken(resetToken)) {
            updatePassword(resetToken, newPassword);
            response.sendRedirect("login.jsp?reset=success");
        } else {
            response.sendRedirect("reset-password.jsp?error=invalid-token");
        }
    }

    private boolean isValidResetToken(String resetToken) {
        boolean isValid = false;
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");
            String sql = "SELECT COUNT(*) FROM users WHERE reset_token = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, resetToken);
            ResultSet rs = stmt.executeQuery();
            if (rs.next() && rs.getInt(1) > 0) {
                isValid = true;
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isValid;
    }

    private void updatePassword(String resetToken, String newPassword) {
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");
            String sql = "UPDATE users SET password = ? WHERE reset_token = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, newPassword);  // Ideally, hash the password before storing
            stmt.setString(2, resetToken);
            stmt.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
