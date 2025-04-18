import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Save to database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");
            String sql = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, message);
            stmt.executeUpdate();
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("Contact.jsp?error=db");  // Redirect to error page if DB error
            return;
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Contact.jsp?error=generic");  // Redirect for other errors
            return;
        }

        // Send email
        final String fromEmail = System.getenv("lkumar769@rku.ac.in");      // Use environment variable
        final String password = System.getenv("lkkb rayz agkn lvxe");  // Use environment variable
        final String toEmail = "lkumar769@rku.ac.in";        // Recipient

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
            msg.setFrom(new InternetAddress(fromEmail, "Skill_Elevate Contact"));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            msg.setSubject("New Contact Message from " + name);
            msg.setText("Email: " + email + "\n\nMessage:\n" + message);
            Transport.send(msg);
        } catch (MessagingException e) {
            e.printStackTrace();
            response.sendRedirect("Contact.jsp?error=email");  // Redirect to error page if email fails
            return;
        }

        // Redirect with success
        response.sendRedirect("Contact.jsp?success=1");
    }
}
