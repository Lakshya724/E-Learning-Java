<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Admin Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            display: flex;
            background-color: #f4f6f9;
        }

        /* Sidebar */
        .sidebar {
            width: 270px;
            height: 100vh;
            background: linear-gradient(to bottom, #fdfd96, #a1c4fd);
            color: #000;
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px 0;
        }

        .sidebar h2 {
            font-size: 22px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 15px;
        }

        /* Profile Section */
        .profile-container {
            text-align: center;
            margin-bottom: 20px;
            
            
        }

        .profile-container img {
            width: 110px;
            height: 110px;
            border-radius: 50%;
            border: 4px solid white;
            object-fit: cover;
        }

        .profile-container h3 {
            font-size: 17px;
            font-weight: 600;
            margin: 8px 0;
        }

        .edit-profile-btn {
            background-color: #3498db;
            color: #fff;
            border: none;
            padding: 10px 18px;
            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
            font-weight: bold;
        }

        .edit-profile-btn:hover {
            background-color: #2980b9;
        }

        /* Sidebar Menu */
        .sidebar a {
            width: 82%;
            padding: 15px 25px;
            color: #000;
            text-decoration: none;
            display: block;
            font-size: 17px;
            font-weight: bold;
            transition: 0.3s;
            text-align: left;
            margin-left:0px;
        }

        .sidebar a:hover, .sidebar .active {
            background-color: #3498db;
            color: #fff;
        }

        /* Logout Button */
        .logout {
            margin-top: auto;
            background-color: #28a745;
            color: #fff;
            width: 100%;
            text-align: center;
            cursor: pointer;
            padding: 18px;
            font-size: 17px;
            font-weight: bold;
            transition: 0.3s;
            border-top: 2px solid #218838;
            margin-bottom: 22px;
        }

        .logout:hover {
            background-color: #218838;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .sidebar {
                width: 220px;
            }

            .sidebar a {
                padding: 12px 20px;
                font-size: 16px;
            }
        }

        @media (max-width: 500px) {
            .sidebar {
                width: 180px;
            }

            .sidebar a {
                padding: 10px 15px;
                font-size: 15px;
            }

            .profile-container img {
                width: 90px;
                height: 90px;
            }

            .profile-container h3 {
                font-size: 15px;
            }

            .edit-profile-btn {
                padding: 8px 15px;
                font-size: 13px;
            }
        }

    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Admin Panel</h2>

        <!-- Profile Section -->
        <div class="profile-container">
            <img src="Images/profile.jpeg" alt="Profile">  <!-- Change to your image path -->
            <h3>Admin Name</h3>
            <button class="edit-profile-btn">Edit Profile</button>
        </div>

        <!-- Sidebar Menu -->
        <a href="admin_dashboard.jsp">Dashboard</a>
        <a href="Admin_course.jsp" >My Course</a>
        <a href="Add_Course.jsp">Add Course</a>
        <a href="user_management.jsp" class="active">User Management</a>
        <a href="#">Settings</a>

        <!-- Logout -->
        <a href="Admin_Login.jsp" class="logout">Logout</a>
    </div>

</body>
</html>
