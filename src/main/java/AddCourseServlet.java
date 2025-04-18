import java.io.*;
import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/AddCourseServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10)
public class AddCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String courseName = request.getParameter("course_name");
        String profName = request.getParameter("prof_name");
        String category = request.getParameter("category");
        String description = request.getParameter("description");

        // Handle "Other" category
        if ("Other".equals(category)) {
            String otherCategory = request.getParameter("other_category");
            if (otherCategory != null && !otherCategory.trim().isEmpty()) {
                category = otherCategory.trim();
            }
        }

        Part imagePart = request.getPart("course_image");
        String fileName = System.currentTimeMillis() + "_" + imagePart.getSubmittedFileName();

        // Upload path
        String uploadPath = getServletContext().getRealPath("/uploads");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        String imagePath = "uploads/" + fileName;
        imagePart.write(uploadPath + File.separator + fileName);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");

            String sql = "INSERT INTO Courses (course_name, professor_name, category, description, image_path) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, courseName);
            stmt.setString(2, profName);
            stmt.setString(3, category);
            stmt.setString(4, description);
            stmt.setString(5, imagePath);

            stmt.executeUpdate();

            request.setAttribute("success", "true");
            RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/Add_Course.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Pages/Add_Course.jsp?error=1");
        }
    }
}
