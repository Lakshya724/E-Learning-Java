<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Our Team</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f7fa;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        /* Section Header */
        .team-header {
            margin-top: 40px;
            color: #222;
            font-weight: bold;
        }

        .team-section {
            max-width: 800px;
            margin: 0 auto;
        }

        .team-section p {
            color: #555;
            font-size: 1.1rem;
        }

        /* Team Cards */
        .team-card {
            position: relative;
            overflow: hidden;
            border-radius: 15px;
            text-align: left;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }

        .team-card:hover {
            transform: translateY(-10px);
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.2);
        }

        .team-card img {
            width: 100%;
            height: auto;
            border-radius: 15px;
        }

        /* Overlay Info */
        .team-card .info {
            position: absolute;
            bottom: 0;
            background: rgba(0, 0, 0, 0.7);
            color: white;
            width: 100%;
            padding: 15px;
            border-radius: 0 0 15px 15px;
            transition: background 0.3s ease-in-out;
        }

        .team-card:hover .info {
            background: rgba(0, 0, 0, 0.85);
        }

        .info h5 {
            font-weight: bold;
        }

        .info p {
            font-size: 0.9rem;
            margin-bottom: 5px;
        }

        /* Social Media Icons */
        .icons {
            margin-top: 8px;
        }

        .icons a {
            color: white;
            margin-right: 12px;
            font-size: 1.2rem;
            transition: color 0.3s ease-in-out;
        }

        .icons a:hover {
            color: #17a2b8;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="team-section text-center">
            <p class="text-primary">The team</p>
            <h2 class="team-header">A small team with impressive cred.</h2>
            <p>Want to work with some of the best global talent and build software used by all the companies you know and love? Join the team — we're hiring!</p>
        </div>

        <div class="row mt-4">
            <div class="col-md-4">
                <div class="team-card">
                    <img src="Images/profile.jpeg" alt="Alisa Hester">
                    <div class="info">
                        <h5>Alisa Hester</h5>
                        <p>Founder & CEO</p>
                        <p>Former co-founder of Opendoor. Early staff at Spotify and Clearbit.</p>
                        <div class="icons">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="team-card">
                    <img src="https://via.placeholder.com/300" alt="Rich Wilson">
                    <div class="info">
                        <h5>Rich Wilson</h5>
                        <p>Engineering Manager</p>
                        <p>Lead engineering teams at Figma, Pitch, and Protocol Labs.</p>
                        <div class="icons">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="team-card">
                    <img src="https://via.placeholder.com/300" alt="Annie Stanley">
                    <div class="info">
                        <h5>Annie Stanley</h5>
                        <p>Product Manager</p>
                        <p>Former PM for Airtable, Medium, Ghost, and Lumi.</p>
                        <div class="icons">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
