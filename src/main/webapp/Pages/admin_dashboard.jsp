<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
    <title>Skill_Elevate Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
        }

        /* Sidebar */
        .sidebar {
            width: 250px;
            height: 100vh;
            background: linear-gradient(to bottom, #fdfd96, #a1c4fd);
            color: #000;
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            flex-direction: column;
            padding-top: 20px;
            transition: width 0.3s ease;
        }

        .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 22px;
            font-weight: bold;
        }

        .profile-section {
            text-align: center;
            padding: 15px;
        }

        .profile-section img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .edit-profile-btn {
            display: block;
            width: 80%;
            margin: 5px auto;
            padding: 8px;
            border: none;
            background: #3498db;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }

        .edit-profile-btn:hover {
            background: #2980b9;
        }

        .sidebar a {
            padding: 15px;
            color: #000;
            text-decoration: none;
            display: block;
            transition: background 0.3s;
            font-size: 18px;
            font-weight: bold;
        }

        .sidebar a:hover, .sidebar .active {
            background-color: #3498db;
            color: #fff;
        }

        /* Logout Button */
        .logout {
            margin-top: auto;
            margin-bottom: 20px;
            background-color: #28a745;
            color: #fff;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s, background-color 0.3s;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            transform: scale(1.00);
        }

        .logout:hover {
            transform: scale(1.00);
            background-color: #218838;
        }

        /* Main Content */
        .main-content {
            margin-left: 250px;
            padding: 20px;
            width: calc(100% - 250px);
            transition: margin-left 0.3s ease;
        }

        /* Cards */
        .cards {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
            flex-wrap: wrap;
        }

        .card {
            flex: 1;
            background-color: #ecf0f1;
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            min-width: 200px;
        }

        /* Charts */
        .charts {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            margin-top: 150px; /* Added margin to move charts down */
        }

        .chart-container {
            flex: 1;
            min-width: 300px;
        }
        
        /* Bar chart specific styling */
        #barChart {
            margin-top: 20px; /* Additional spacing for bar chart */
        }
        
        /* Reduced pie chart size */
        #pieChart {
            width: calc(100% - 50px) !important;
            height: calc(100% - 50px) !important;
            max-width: 420px;
            max-height: 420px;
            margin: 0 auto;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .sidebar {
                width: 180px;
            }
            .main-content {
                margin-left: 180px;
                width: calc(100% - 180px);
            }
            .card {
                flex-basis: 100%;
            }
            .charts {
                margin-top: 100px; /* Adjusted for smaller screens */
            }
        }

        @media (max-width: 500px) {
            .sidebar {
                width: 100px;
            }
            .sidebar h2 {
                font-size: 16px;
            }
            .sidebar a {
                font-size: 14px;
                padding: 10px;
            }
            .main-content {
                margin-left: 100px;
                width: calc(100% - 100px);
            }
            .charts {
                margin-top: 80px; /* Further adjustment for mobile */
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
   <!-- Sidebar -->
   <div class="sidebar">
        <h2>Admin Panel</h2>
        <div class="profile-section">
            <img src="Images/profile.jpeg" alt="Profile Image">
            <p>${sessionScope.adminName}</p>
            <button class="edit-profile-btn">Edit Profile</button>
        </div>
        <a href="admin_dashboard.jsp" class="active">Dashboard</a>
        <a href="Admin_course.jsp">My Course</a>
        <a href="Add_Course.jsp">Add Course</a>
        <a href="user_management.jsp">User Management</a>
        <a href="settings.jsp">Settings</a>
        <a href="Admin_Login.jsp" class="logout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h2>Dashboard</h2>
        <div class="cards">
            <div class="card">
                <h3>Total User</h3>
                <p>${totalUsers}</p>
            </div>
            <div class="card">
                <h3>Monthly User</h3>
                <p>${monthlyUsers}</p>
            </div>
            <div class="card">
                <h3>Daily User</h3>
                <p>${dailyUsers}</p>
            </div>
        </div>
        <div class="charts">
            <div class="chart-container">
                <canvas id="barChart"></canvas>
            </div>
            <div class="chart-container">
                <canvas id="pieChart"></canvas>
            </div>
        </div>
    </div>

    <script>
        const barCtx = document.getElementById('barChart').getContext('2d');
        new Chart(barCtx, {
            type: 'bar',
            data: {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
                datasets: [{
                    label: 'User Growth',
                    data: [12, 19, 15, 20, 25],
                    backgroundColor: '#3498db'
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: true
            }
        });

        const pieCtx = document.getElementById('pieChart').getContext('2d');
        new Chart(pieCtx, {
            type: 'pie',
            data: {
                labels: ['Active', 'Inactive', 'New', 'Returning'],
                datasets: [{
                    data: [40, 20, 25, 15],
                    backgroundColor: ['#27ae60', '#e74c3c', '#f39c12', '#8e44ad']
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false
            }
        });
    </script>
</body>
</html>