

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


@WebServlet("/userprofileservlet")
public class userprofileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		String myname = request.getParameter("name");
        String mymobile = request.getParameter("mobile");
        String myemail = request.getParameter("email");
        String mypassword = request.getParameter("password");
        String myconf_password = request.getParameter("conf_password");

        String jdbcURL = "jdbc:mysql://localhost:3306/skill_Elevate";
        String dbUser = "root";
        String dbPassword = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("skill_Elevate", "root", "");
            
            String query = "UPDATE register SET username=?, name=?, mobile=?, email=?, password=?, conf_password=? WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, myname);
            stmt.setString(2, mymobile);
            stmt.setString(3, myemail);
            stmt.setString(4, mypassword);
            stmt.setString(5, myconf_password);
            
            stmt.executeUpdate();
            stmt.close();
            conn.close();

            response.sendRedirect("Pages/Profile.jsp"); // Redirect back to profile page after update
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

}
