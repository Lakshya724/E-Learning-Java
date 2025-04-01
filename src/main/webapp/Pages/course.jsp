<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
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
            padding-top:75px;
       
        }

        .hero {
        
            width: 100%;
		    height: 400px; /* Adjust based on requirement */
		    background-image: url('Images/Adminfront.jpg'); /* Update the correct path */
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
        
        
        
        
        .services {
            padding: 20px;
            
            
        }
        .services h2 {
            font-size: 24px;
            margin-bottom: 20px;
           
        }
        .services-grid {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
            
        }
        .service-item {
            background: #e0e0e0;
            padding: 20px;
            width: 150px;
            text-align: center;
            border-radius: 10px;
            background-color: #c1d3ff;

        }
        
        .service-item img {
            width: 50px;
            height: 50px;
            margin-bottom: 10px;
        
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
        .service-item a {
    text-decoration: none;
    color: inherit; /* Keeps the text color unchanged */
}
    </style>
</head>
<body>

<jsp:include page="Navbar.jsp"></jsp:include>

    <div class="hero"></div>
    <p class="tagline">India's Most Loved Coding Community <span>❤️</span></p>

    <h2 class="course-title">All Courses</h2>
    <div class="categories">
        <div class="category">HTML</div>
        <div class="category">CSS</div>
        <div class="category">JAVASCRIPT</div>
        <div class="category">React</div>
        <div class="category">PYTHON</div>
        <div class="category">FLUTTER</div>
        <div class="category">SWIFT</div>
        <div class="category">PYTORCH</div>
         <div class="category">SQL</div>
        <div class="category">EXCEL</div>
        <div class="category">POWER BI</div>
        <div class="category">NUMPY</div>
    </div>
    
     
    
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

    <div class="course-grid">
     <div class="course-card">
    <img src="Images/Img1.jpg" alt="Course Image">
    <h3>Html Complete Basic Level 1 HTML5: Learn Different Tags  & more</h3>
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
          <div class="course-card">
    <img src="Images/img7.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Pervez Belim</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img8.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Pervez Belim</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img9.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Pervez Belim</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img10.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Pervez Belim</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img11.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Pervez Belim</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img12.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Pervez Belim</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>
       <div class="course-card">
    <img src="Images/img13.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Snehal Sathwara</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img14.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Chhaya Patel</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img15.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Chetan Shingadiya</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img16.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Chetan Shingadiya</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img17.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Pervez Belim</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img18.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Pervez Belim</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div> 
        
       <div class="course-card">
    <img src="Images/img19.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Neha Chauhan</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img20.jpg" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Neha Chauhan</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img21.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Neha Chauhan</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img13.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Snehal Sathwara</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img23.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Snehal Sathwara</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>

<div class="course-card">
    <img src="Images/img24.png" alt="Course Image">
    <h3>Introduction to Mobile App Development & more</h3>
    <p><b>Prof. Snehal Sathwara</b></p>
    <br>
    <a href="course-details.jsp" class="free-badge-link">
        <span class="free-badge">Free Learning</span>
    </a>
</div>
        
       
    </div>
    
    <jsp:include page="learners.jsp"/>
    
    <jsp:include page="Footer.jsp"></jsp:include>

    
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
