<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skill_Elevate</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>
        /* Reset styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        

        /* Navbar styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px 30px;
            background-color: white;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 10;
        }

        /* Logo styling */
        .logo {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            text-decoration: none;
            width: 120px; /* Adjust as needed */
 			Maintain aspect ratio */
  			display: block; /* Prevents extra space below image */
  			margin-top: 0px;
  			
            
        }

        /* Navigation links */
        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .nav-links li {
            display: inline;
        }

        .nav-links a {
            text-decoration: none;
            color: #333;
            font-size: 16px;
            padding: 10px 15px;
            font-weight: 500;
            border-radius: 5px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            background-color: #D4AF65;
            color: white;
        }

        /* Search Box */
        .search-box {
            display: flex;
            align-items: center;
            background: #f9f9f9;
            padding: 5px 12px;
            border-radius: 20px;
            border: 1px solid #ccc;
        }

        .search-box input {
            border: none;
            outline: none;
            background: transparent;
            padding: 5px;
            font-size: 14px;
            width: 180px;
        }

        .search-box button {
            background: none;
            border: none;
            cursor: pointer;
            color: #666;
            font-size: 16px;
        }

        .search-box button:hover {
            color: #D4AF65;
        }

        /* Profile Dropdown */
        .dropdown-container {
            position: relative;
            cursor: pointer;
        }

        .user-icon {
            font-size: 22px;
            color: #333;
            transition: 0.3s;
        }

        .user-icon:hover {
            color: #D4AF65;
        }

        /* Dropdown Menu */
        .dropdown-menu {
            display: none;
            position: absolute;
            right: 0;
            top: 40px;
            background: white;
            border-radius: 5px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 160px;
            padding: 10px 0;
		        }


        .dropdown-menu a {
            display: block;
            padding: 10px 15px;
            text-decoration: none;
            color: black;
            font-size: 16px;
            transition: 0.3s;
        }

        .dropdown-menu a:hover {
            background: #D4AF65;
            color: white;
        }
        

        /* Logout Button Styling */
        .logout-button {
            width: 100%;
            background: #FF4C4C;
            color: white;
            text-align: center;
            padding: 10px 0;
            font-size: 16px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            border-radius: 5px;
            display: block;
            margin-top: 5px;
        }

        .logout-button:hover {
            background: #D43838;
        }

        /* Responsive design */
        @media screen and (max-width: 768px) {
            .navbar {
                flex-direction: column;
                padding: 10px;
            }

            .nav-links {
                flex-wrap: wrap;
                justify-content: center;
                gap: 10px;
            }

            .search-box {
                margin: 10px 0;
                width: 80%;
            }

            .search-box input {
                width: 100%;
            }

            .user-icon {
                font-size: 22px;
            }

            .change-password {
    white-space: nowrap;  /* Prevents wrapping of the "Change Password" text */
    padding: 10px 15px;
    text-decoration: none;
    color: black;
    font-size: 16px;
    font-weight: 500;
    border-radius: 5px;
    transition: 0.3s;
    display: block; /* Makes the link block-level, so it takes full width */
}

/* Hover effect for "Change Password" */
.change-password:hover {
    background-color: #D4AF65;
    color: white;
}
            
        }
    </style>
</head>
<body>

   <div class="navbar">
 <a href="Index.jsp">
  <img src="Images/Logo.png" alt="Skill_Elevate" class="logo">
</a>
    <ul class="nav-links">
        <li><a href="Index.jsp">Home</a></li>
        <li><a href="Select.jsp">Courses</a></li>
        <li><a href="About.jsp">About Us</a></li>
        <li><a href="Contact.jsp">Contact Us</a></li>
    </ul>

    <!-- 🔎 Search Box -->
    <div class="search-box">
        <input type="text" id="navbarSearch" placeholder="Search" onkeyup="searchCourses()">
        <button><i class="fa-solid fa-search"></i></button>
    </div>
<div class="dropdown-container" id="dropdownContainer">
    <i class="fa-solid fa-user user-icon" onclick="toggleDropdown()"></i>
    <div class="dropdown-menu" id="dropdownMenu">
        <%
            String user = (String) session.getAttribute("username");
            if (user != null) { 
        %>
            <a href="Profile.jsp">My Profile</a> <!-- ✅ Profile link -->
            <a href="ChangePassword.jsp" class="change-password">Change Password</a> <!-- ✅ Change Password link -->
            <form action="<%=request.getContextPath()%>/LogoutServlet" method="POST">
                <button type="submit" class="logout-button">Logout</button>
            </form>
        <% } else { %>
            <a href="Login.jsp">Sign In</a>
            <a href="Register.jsp">Sign Up</a>
        <% } %>
    </div>
</div>


</div>


    <script>
        // Toggle Dropdown Menu
        function toggleDropdown() {
            var dropdownMenu = document.getElementById("dropdownMenu");
            if (dropdownMenu.style.display === "block") {
                dropdownMenu.style.display = "none";
            } else {
                dropdownMenu.style.display = "block";
            }
        }

        // Close dropdown when clicking outside
        window.onclick = function(event) {
            var dropdownMenu = document.getElementById("dropdownMenu");
            var dropdownContainer = document.getElementById("dropdownContainer");
            if (!dropdownContainer.contains(event.target)) {
                dropdownMenu.style.display = "none";
            }
        };
    </script>

</body>
</html>
