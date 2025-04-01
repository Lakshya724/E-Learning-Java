<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<!DOCTYPE html>
<html>
<head>
    <title>Skill_Elevate - Footer</title>
    <style>
        /* Reset margins & paddings */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .main-content {
            min-height: 100vh; /* Ensures hero section has enough space */
        }

        /* Ensure full height layout */
        html, body {
            height: 100%;
            display: block;
            flex-direction: column;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            
        }

        /* Footer Styling */
        .footer {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            padding: 40px 80px;
            background-color: #e0e0e0;
            gap: 70px;
            flex-wrap: wrap;
            width: 100%;
            position: relative;
            z-index: 10;
        }

        .footer-column {
            flex: 1;
            min-width: 200px;
        }

        .footer h3 {
            font-size: 18px;
            font-weight: bold;
        }

        .footer p, .footer ul {
            font-size: 14px;
            color: #555;
            line-height: 1.5;
        }

        .footer ul {
            list-style: none;
            padding: 0;
        }

        .footer ul li {
            margin: 5px 0;
        }

        .footer ul li a {
            text-decoration: none;
            color: #555;
        }

        .footer ul li a:hover {
            text-decoration: underline;
        }

        /* Email Subscription Box */
        .email-box {
            display: flex;
            margin-top: 10px;
        }

        .email-box input {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 20px 0 0 20px;
            outline: none;
            width: 180px;
        }

        .email-box button {
            padding: 10px 15px;
            border: none;
            background-color: #f4b400;
            color: white;
            border-radius: 0 20px 20px 0;
            cursor: pointer;
        }

        .email-box button:hover {
            background-color: #e09b00;
        }

        /* Move Logo Upward */
        .logo {
            width: 120px; /* Adjust size as needed */
            height: auto; /* Maintain aspect ratio */
            display: block; /* Prevents extra space below image */
            position: relative;
            top: -20px; /* Moves the logo 50px upward */
            left: 20px
        }

        /* Responsive Footer */
        @media (max-width: 768px) {
            .footer {
                flex-direction: column;
                text-align: center;
                padding: 30px;
            }
        }
    </style>
</head>
<body>

    <div class="footer">
        <div class="footer-column">
            <a href="Index.jsp">
                <img src="Images/Logo_f.png" alt="Skill_Elevate" class="logo">
            </a>
            <p>Skill_Elevate is a platform dedicated to empowering aspiring developers. From beginner tutorials to advanced programming concepts, we provide a comprehensive learning experience designed to help you master coding skills, build projects, and launch your tech career.</p>
        </div>
        <div class="footer-column">
            <h3>Courses</h3>
            <ul>
                <li><a href="course.jsp">All Courses</a></li>
                <li><a href="Web.jsp">Web Development</a></li>
                <li><a href="Mobile.jsp">Mobile Development</a></li>
                <li><a href="Datascience.jsp">Data Science</a></li>
                <li><a href="AIML.jsp">AI/ML</a></li>
            </ul>
        </div>
        <div class="footer-column">
            <h3>Links</h3>
            <ul>
                <li><a href="Index.jsp">Home</a></li>
                <li><a href="course.jsp">Courses</a></li>
                <li><a href="About.jsp">About</a></li>
                <li><a href="Contact.jsp">Contact Us</a></li>
            </ul>
        </div>
        <div class="footer-column">
            <h3>Get In Touch</h3>
            <div class="email-box">
                <input type="email" placeholder="Enter Your Email">
                <button>Go</button>
            </div>
        </div>
    </div>

</body>
</html>
