<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Course List - Admin Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
        }

        /* Flex Container */
        .container {
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar */
        .sidebar {
            width: 270px;
            background: #343a40;
            color: white;
            padding: 20px;
            position: fixed;
            height: 100vh;
            left: 0;
            top: 0;
        }

        /* Main Content */
        .main-content {
            margin-left: 300px; /* Adjusted margin */
            padding: 30px;
            flex-grow: 1;
        }

        .header {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }

        /* Course Grid */
        .course-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        /* Course Card */
        .course-card {
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .course-card:hover {
            transform: translateY(-5px);
        }

        .course-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .course-content {
            padding: 15px;
            background: #dde5fa;
        }

        .course-content h3 {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .course-content p {
            font-size: 14px;
            color: #555;
            margin-bottom: 10px;
        }

        .course-content .skills {
            font-weight: bold;
            color: #000;
        }

        .view-btn {
            display: block;
            text-align: center;
            background: #007bff;
            color: white;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 10px;
            transition: 0.3s;
        }

        .view-btn:hover {
            background: #0056b3;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .main-content {
                margin-left: 270px; /* Adjust for smaller screens */
            }
        }

        @media (max-width: 500px) {
            .main-content {
                margin-left: 0; /* Full width on small screens */
            }
        }

    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <jsp:include page="Sl.jsp"/>
</div>

<!-- Main Content -->
<div class="main-content">
    <h2 class="header">Course List</h2>

    <div class="course-grid">
        <!-- Course 1 -->
        <div class="course-card">
            <img src="Images/img8.png" alt="Flutter Course">
            <div class="course-content">
                <h3>Introduction to Mobile App Development</h3>
                <p><span class="skills">Skills you'll gain:</span> Mobile Development, Android Studio, Flutter...</p>
                <a href="Admin_view.jsp" class="view-btn">View</a>
            </div>
        </div>

        <!-- Course 2 -->
        <div class="course-card">
            <img src="Images/img11.png" alt="Android Course">
            <div class="course-content">
                <h3>Introduction to Mobile App Development</h3>
                <p><span class="skills">Skills you'll gain:</span> Android Studio, Application Development...</p>
              <a href="Admin_view.jsp" class="view-btn">View</a>
            </div>
        </div>

        <!-- Course 3 -->
        <div class="course-card">
            <img src="Images/img24.png" alt="SQL Course">
            <div class="course-content">
                <h3>Introduction to SQL</h3>
                <p><span class="skills">Skills you'll gain:</span> SQL Queries, Database Management...</p>
               <a href="Admin_view.jsp" class="view-btn">View</a>
            </div>
        </div>

        <!-- Course 4 -->
        <div class="course-card">
            <img src="Images/img17.png" alt="ChatGPT Course">
            <div class="course-content">
                <h3>Introduction to ChatGPT</h3>
                <p><span class="skills">Skills you'll gain:</span> AI, Chatbots, NLP...</p>
             <a href="Admin_view.jsp" class="view-btn">View</a>
            </div>
        </div>

        <!-- Course 5 -->
        <div class="course-card">
            <img src="Images/img19.png" alt="Excel Course">
            <div class="course-content">
                <h3>Introduction to Excel</h3>
                <p><span class="skills">Skills you'll gain:</span> Data Analysis, Excel Formulas...</p>
               <a href="Admin_view.jsp" class="view-btn">View</a>
        </div>
        </div>

        <!-- Course 6 -->
        <div class="course-card">
            <img src="Images/img6.png" alt="React Native Course">
            <div class="course-content">
                <h3>Introduction to Mobile App Development</h3>
                <p><span class="skills">Skills you'll gain:</span> React Native, Mobile Development...</p>
                <a href="#" class="view-btn">View</a>
            </div>
        </div>
          <!-- Course 5 -->
        <div class="course-card">
            <img src="Images/img5.png" alt="Excel Course">
            <div class="course-content">
                <h3>Introduction to Excel</h3>
                <p><span class="skills">Skills you'll gain:</span> Data Analysis, Excel Formulas...</p>
               <a href="Admin_view.jsp" class="view-btn">View</a>
            </div>
        </div>

        <!-- Course 6 -->
        <div class="course-card">
            <img src="Images/img20.jpg" alt="React Native Course">
            <div class="course-content">
                <h3>Introduction to Mobile App Development</h3>
                <p><span class="skills">Skills you'll gain:</span> React Native, Mobile Development...</p>
                <a href="#" class="view-btn">View</a>
            </div>
        </div>
        
    </div>

</div>

</body>
</html>
