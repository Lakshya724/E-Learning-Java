<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skill_Elevate - Courses</title>
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
            padding-top:50px;
       
        }

        .hero {
        
            width: 100%;
		    height: 400px; /* Adjust based on requirement */
		    background-image: url('Images/select_2.webp'); /* Update the correct path */
		    background-size: cover;
		    background-position: center;
		    
        }
        .hero img {
		    width: 100%;
		    height: auto;
		    display: block;
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
    display: block; /* Ensures it takes its own line */
    text-align: left; /* Aligns it properly */
    padding-left: 20px; /* Adjust as needed */
    clear: both; /* P
    revents floating elements from interfering */
    margin-left:40px;
        }

        .categories {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-bottom: 20px;
        }

        .category {
            background-color: #a3c5ff;
            padding: 15px 30px;
            border-radius: 20px;
            font-weight: bold;
            cursor: pointer;
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

        .rating {
            font-size: 16px;
            font-weight: bold;
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
    </style>
</head>
<body>

<jsp:include page="Navbar.jsp"></jsp:include>

    <div class="hero"></div>
    <p class="tagline">India's Most Loved Coding Community <span>❤️</span></p>

    <h2 class="course-title">All the skills  related to Web Development....</h2>
    <div class="categories">
        <div class="category">HTML</div>
        <div class="category">CSS</div>
        <div class="category">JAVASCRIPT</div>
        <div class="category">React</div>
         
    </div>

    <div class="course-grid">
     <div class="course-card">
    <img src="Images/Img1.jpg" alt="Course Image">
    <h3>Html Complete Basic Level: Learn Different Tags & more</h3>
    <p><b>Prof. Nikunj Vadher</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img2.png" alt="Course Image">
    <h3>Html Complete Average Level: Learn about building websites & more</h3>
    <p><b>Prof. Nikunj Vadher</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img3.png" alt="Course Image">
    <h3>Html Complete Advance Level: Learn Real-time website building & more</h3>
    <p><b>Prof. Nikunj Vadher</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img4.png" alt="Course Image">
    <h3>Complete CSS: Learn Beginner to Advance Level & more</h3>
    <p><b>Prof. Nikunj Vadher</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img5.png" alt="Course Image">
    <h3>Complete Javascript: Learn Beginner Level to Advance & more</h3>
    <p><b>Prof. Nikunj Vadher</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img6.png" alt="Course Image">
    <h3>Complete React: Learn Beginner Level to Advance & more</h3>
    <p><b>Prof. Nikunj Vadher</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>
</div>

<jsp:include page="learners.jsp"/>
<jsp:include page="Footer.jsp"/>

<script>
function searchCourses() {
    let input = document.getElementById("navbarSearch").value.toLowerCase();
    let courses = document.getElementsByClassName("course-card");

    for (let i = 0; i < courses.length; i++) {
        let title = courses[i].getElementsByTagName("h3")[0].innerText.toLowerCase();
        
        if (title.includes(input)) {
            courses[i].style.display = "block"; // Show matching courses
        } else {
            courses[i].style.display = "none"; // Hide non-matching courses
        }
    }
}

// Toggle User Dropdown Menu
function toggleDropdown() {
    let dropdownMenu = document.getElementById("dropdownMenu");
    dropdownMenu.style.display = (dropdownMenu.style.display === "block") ? "none" : "block";
}

// Close dropdown when clicking outside
window.onclick = function(event) {
    let dropdownMenu = document.getElementById("dropdownMenu");
    let dropdownContainer = document.getElementById("dropdownContainer");
    if (!dropdownContainer.contains(event.target)) {
        dropdownMenu.style.display = "none";
    }
};
</script>


</body>
</html>