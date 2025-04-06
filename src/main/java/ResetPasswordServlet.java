@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String otp = request.getParameter("otp");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!newPassword.equals(confirmPassword)) {
            response.sendRedirect("ResetPassword.jsp?email=" + email + "&error=Passwords do not match!");
            return;
        }

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");

            // Check OTP
            String checkQuery = "SELECT conf_password FROM register WHERE email=?";
            stmt = conn.prepareStatement(checkQuery);
            stmt.setString(1, email);
            rs = stmt.executeQuery();

            if (rs.next() && rs.getString("conf_password").equals(otp)) {
                // ✅ Update password
                String updateQuery = "UPDATE register SET password=?, conf_password='' WHERE email=?";
                stmt = conn.prepareStatement(updateQuery);
                stmt.setString(1, newPassword);
                stmt.setString(2, email);
                stmt.executeUpdate();

                response.sendRedirect("Login.jsp?success=Password changed successfully!");
            } else {
                response.sendRedirect("ResetPassword.jsp?email=" + email + "&error=Invalid OTP!");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ResetPassword.jsp?error=Database error!");
        }
    }
}
