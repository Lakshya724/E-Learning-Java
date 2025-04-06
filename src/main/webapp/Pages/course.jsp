<%@ page import="java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Skill_Elevate - All Courses</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background-color: #f8f8e8;
            text-align: center;
            padding-top: 50px;
        }
        .hero {
            width: 100%;
            height: 400px;
            background-image: url('Images/select_2.webp');
            background-size: cover;
            background-position: center;
        }
        .tagline {
            font-size: 18px;
            font-weight: bold;
            color: #8b8b8b;
            margin: 10px 0;
        }
        .tagline span {
            color: red;
        }
        .course-title {
            font-size: 22px;
            font-weight: bold;
            margin: 20px 0;
            display: block;
            text-align: left;
            padding-left: 20px;
            margin-left: 40px;
        }
        .course-grid {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }
        .course-card {
            background-color: #c1d3ff;
            border-radius: 10px;
            width: 250px;
            padding: 10px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .course-card img {
            width: 100%;
            height: 140px;
            border-radius: 10px;
        }
        .course-card h3 {
            font-size: 16px;
            margin: 8px 0;
        }
        .course-card p {
            font-size: 14px;
            color: #444;
        }
        .free-badge {
            display: inline-block;
            background-color: blue;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 14px;
            margin-top: 5px;
        }

        /* SERVICES SECTION */
        .services {
            padding: 30px 0;
        }
        .services-grid {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
            margin: 30px auto;
        }
        .service-item {
            text-align: center;
            width: 150px;
            background-color: #f5f5f5;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .service-item:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }
        .service-item img {
            width: 60px;
            height: 60px;
            object-fit: contain;
            margin-bottom: 10px;
        }
        .service-item a {
            text-decoration: none;
            color: black;
            font-weight: bold;
            display: block;
        }
    </style>
</head>
<body>

<jsp:include page="Navbar.jsp" />

<div class="hero"></div>
<p class="tagline">India's Most Loved Coding Community <span>❤️</span></p>

<!-- SERVICES SECTION -->
<section class="services"> 
    <div class="services-grid">
        <div class="service-item">
            <a href="course.jsp">
                <img src="Images/Allcourse.png" alt="All Courses">
                <p>All Courses</p>
            </a>
        </div>
        <div class="service-item">
            <a href="Web.jsp">
                <img src="Images/web1.png" alt="Web Development">
                <p>Web Development</p>
            </a>
        </div>
        <div class="service-item">
            <a href="Mobile.jsp">
                <img src="Images/mobile1.png" alt="Mobile Development">
                <p>Mobile Development</p>
            </a>
        </div>
        <div class="service-item">
            <a href="AIML.jsp">
                <img src="Images/ai-ml1.jpg" alt="AI/ML">
                <p>AI/ML</p>
            </a>
        </div>
        <div class="service-item">
            <a href="Datascience.jsp">
                <img src="Images/Data1.png" alt="Data Science">
                <p>Data Science</p>
            </a>
        </div>
    </div>
</section>

<h2 class="course-title">  Explore All Available Courses....</h2>

<!-- DYNAMIC COURSE GRID -->
<div class="course-grid">
<%
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_elevate", "root", "");

        String sql = "SELECT * FROM Courses";
        stmt = conn.prepareStatement(sql);
        rs = stmt.executeQuery();

        while (rs.next()) {
            String imagePath = rs.getString("image_path");
            String courseName = rs.getString("course_name");
            String professor = rs.getString("professor_name");
            int courseId = rs.getInt("course_id");
%>
    <div class="course-card">
        <img src="<%= request.getContextPath() + "/" + imagePath %>" alt="Course Image">
        <h3><%= courseName %></h3>
        <p><b><%= professor %></b></p>
        <br>
        <a href="course-details.jsp?course_id=<%= courseId %>" class="free-badge-link">
            <span class="free-badge">Free Learning</span>
        </a>
    </div>
<%
        }
    } catch (Exception e) {
        out.println("<p style='color:red;'>Error loading courses: " + e.getMessage() + "</p>");
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (Exception ignored) {}
        if (stmt != null) try { stmt.close(); } catch (Exception ignored) {}
        if (conn != null) try { conn.close(); } catch (Exception ignored) {}
    }
%>
</div>

<jsp:include page="learners.jsp" />
<jsp:include page="Footer.jsp" />

<script>
function searchCourses() {
    let input = document.getElementById("navbarSearch").value.toLowerCase();
    let courses = document.getElementsByClassName("course-card");

    for (let i = 0; i < courses.length; i++) {
        let title = courses[i].getElementsByTagName("h3")[0].innerText.toLowerCase();
        courses[i].style.display = title.includes(input) ? "block" : "none";
    }
}
</script>

</body>
</html>
