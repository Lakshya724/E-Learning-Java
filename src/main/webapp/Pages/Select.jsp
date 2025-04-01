<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skill Elevate - Courses</title>
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
        }

        /* Hero Slider */
        .slider {
            position: relative;
            width: 100%;
            height: 450px; /* Adjust as needed */
            overflow: hidden;
        }

        .slider img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: none;
        }

        .slider img.active {
            display: block;
        }

        /* Slider Dots */
        .slider-dots {
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            gap: 10px;
        }

        .dot {
            width: 12px;
            height: 12px;
            background-color: #d3d3d3;
            border-radius: 50%;
            cursor: pointer;
        }

        .dot.active {
            background-color: black;
        }

        /* Courses Section */
        .courses-container {
            background-color: #fff;
            margin: 20px auto;
            width: 80%;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .courses-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            border: 2px solid orange;
            display: inline-block;
            padding: 5px 15px;
            border-radius: 10px;
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

    <!-- Include Navbar -->
    <jsp:include page="Navbar.jsp"/>

    <!-- Hero Slider -->
    <div class="slider">
        <img src="Images/Img1.jpg" class="active">
        <img src="Images/select_1.jpg">
        <img src="Images/select_2.webp">
        <img src="Images/Mobile.jpg">

        <div class="slider-dots">
            <div class="dot active" onclick="changeSlide(0)"></div>
            <div class="dot" onclick="changeSlide(1)"></div>
            <div class="dot" onclick="changeSlide(2)"></div>
            <div class="dot" onclick="changeSlide(3)"></div>
        </div>
    </div>

    <!-- Courses Section -->
  <div class="courses-container">
    <h2 class="courses-title">Courses We Provide</h2>
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
            </a>
        </div>
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


    <!-- Include Footer -->
    <jsp:include page="Footer.jsp"/>

    <script>
        let currentIndex = 0;
        const slides = document.querySelectorAll(".slider img");
        const dots = document.querySelectorAll(".dot");

        function changeSlide(index) {
            slides[currentIndex].classList.remove("active");
            dots[currentIndex].classList.remove("active");
            currentIndex = index;
            slides[currentIndex].classList.add("active");
            dots[currentIndex].classList.add("active");
        }

        function autoSlide() {
            let nextIndex = (currentIndex + 1) % slides.length;
            changeSlide(nextIndex);
        }

        setInterval(autoSlide, 3000); // Auto-slide every 3 seconds
        
        
    </script>

</body>
</html>
