<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    
    <style>
        /* Reset Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        /* About Us Section */
        .about-section {
            position: relative;
            width: 100%;
            height: 400px; /* Adjust height as needed */
            background: url('Images/a_5.jpg') no-repeat center center;
            background-size: cover; /* Ensures the image covers the whole section */
            background-attachment: fixed; /* Optional: keeps it static while scrolling */
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .about-content {
            background: rgba(0, 0, 0, 0.5); /* Semi-transparent overlay */
            padding: 30px;
            border-radius: 10px;
            max-width: 600px;
            color: white;
        }

        .about-content h2 {
            font-size: 40px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .about-content p {
            font-size: 18px;
            margin-bottom: 15px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ffcc00;
            color: black;
            font-weight: bold;
            border-radius: 5px;
            text-decoration: none;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background-color: #e6b800;
        }

    </style>
</head>
<body>

    <!-- About Us Section -->
    <section class="about-section">
        <div class="about-content">
            <h2>About Us</h2>
            <p>From preschool to pre-tertiary, our students enjoy fun, interactive and relevant lessons and are empowered to think beyond the confines of the classroom.</p>
            <a href="#" class="btn">See More</a>
        </div>
    </section>

</body>
</html>
