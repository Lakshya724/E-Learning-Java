<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course</title>
<style>
     /* Courses Section */
        .courses-container {
            background-color: #fff;
            margin: 20px auto;
            width: 80%;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .courses-grid {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .course-card {
            background-color: #f1f1f1;
            padding: 15px;
            width: 150px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
        }

        .course-card img {
            width: 50px;
            height: 50px;
        }

        .course-card p {
            margin-top: 10px;
            font-weight: bold;
        }
</style>
</head>
<body>
    <!-- Courses Section -->
  <div class="courses-container">
    <h2 class="courses-title"></h2>
    <div class="courses-grid">
        <div class="course-card">
            <a href="course.jsp" style="text-decoration: none; color: inherit;">
                <img src="Images/Allcourse.png" alt="All Courses">
                <p>All Courses</p>
            </a>
        </div>
        <div class="course-card">
            <a href="Web.jsp" style="text-decoration: none; color: inherit;">
                <img src="Images/web1.png" alt="Web Development">
                <p>Web Development</p>
            </a>
        </div>
        <div class="course-card">
            <a href="Mobile.jsp" style="text-decoration: none; color: inherit;">
                <img src="Images/mobile1.png" alt="Mobile Development">
                <p>Mobile Development</p>
            </a>       </div>
        <div class="course-card">
            <a href="AIML.jsp" style="text-decoration: none; color: inherit;">
                <img src="Images/ai-ml1.jpg" alt="AI/ML">
                <p>AI/ML</p>
            </a>
        </div>
        <div class="course-card">
            <a href="Datascience.jsp" style="text-decoration: none; color: inherit;">
                <img src="Images/Data1.png" alt="Data Science">
                <p>Data Science</p>
            </a>
        </div>
    </div>
</div>
</body>
</html>