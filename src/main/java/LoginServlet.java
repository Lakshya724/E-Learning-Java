
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			// ✅ Database Connection
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");

			String query = "SELECT * FROM register WHERE email = ?";
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();

			if (rs.next()) {
				String storedPassword = rs.getString("password");

				if (storedPassword.equals(password)) {
					// ✅ Session Set
					HttpSession session = request.getSession();
					session.setAttribute("username", email);
					session.setMaxInactiveInterval(15 * 60); // 30 min session timeout

					// ✅ Cookie Set
					Cookie userCookie = new Cookie("user", email);
					userCookie.setMaxAge(60 * 60 * 24 * 7); // 7 days
					response.addCookie(userCookie);

					response.sendRedirect("Pages/Index.jsp"); // ✅ Redirect to Home
				} else {
					response.sendRedirect("Pages/Login.jsp?error=Invalid email or password");
				}
			} else {
				response.sendRedirect("Pages/Login.jsp?error=Invalid email or password");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
