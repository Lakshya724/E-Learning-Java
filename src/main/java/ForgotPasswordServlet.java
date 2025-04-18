import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.mail.*;
import jakarta.mail.internet.*;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.Properties;

@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        
        // Check if the email exists in the database
        if (isEmailRegistered(email)) {
            String resetToken = generateResetToken();  // You can use a secure method like UUID
            saveResetToken(email, resetToken);  // Save token in the database for verification later
            
            // Send the password reset email with the token
            sendResetEmail(email, resetToken);
            
            // Redirect to a confirmation page (you can create this page)
            response.sendRedirect("password-reset-link-sent.jsp");
        } else {
            response.sendRedirect("forgot-password.jsp?error=1");  // Show error if email is not registered
        }
    }

    private boolean isEmailRegistered(String email) {
        boolean isRegistered = false;
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");
            String sql = "SELECT COUNT(*) FROM users WHERE email = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next() && rs.getInt(1) > 0) {
                isRegistered = true;
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isRegistered;
    }

    private String generateResetToken() {
        // Use a secure method to generate the token, e.g., UUID
        return java.util.UUID.randomUUID().toString();  // Example token, replace with a more secure one
    }

    private void saveResetToken(String email, String resetToken) {
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");
            String sql = "UPDATE users SET reset_token = ? WHERE email = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, resetToken);
            stmt.setString(2, email);
            stmt.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void sendResetEmail(String email, String resetToken) throws UnsupportedEncodingException {
        final String fromEmail = "lkumar769@rku.ac.in";  // Your email address
        final String password = "lkkb rayz agkn lvxe";        // Your app-specific password
        final String toEmail = email;

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        });

        try {
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(fromEmail, "Skill Elevate"));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            msg.setSubject("Password Reset Request");
            msg.setText("To reset your password, click on the following link:\n"
                        + "http://localhost:8080/your-web-app/ResetPassword.jsp?token=" + resetToken);
            Transport.send(msg);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
