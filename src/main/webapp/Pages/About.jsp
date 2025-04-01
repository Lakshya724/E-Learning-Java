<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Skill Elevate</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css"> <!-- Custom Styles -->
    <style>
body{
        padding-top: 75px;
}
    </style>
</head>
<body>
<jsp:include page="Navbar.jsp"></jsp:include>
<jsp:include page="About1.jsp"/>

   


    <!-- Features Section -->
    <section class="container py-5">
        <h2 class="text-center">Preparing Students to Achieve Success</h2>
        <div class="row text-center mt-4">
            <div class="col-md-4">
                <img src="Images/a_2.jpg" class="img-fluid rounded-circle" alt="Learning">
                <h4>Developing Confident Learners</h4>
                <p>We help students develop strong learning skills.</p>
                <a href="#" class="btn btn-warning">Read More</a>
            </div>
            <div class="col-md-4">
                <img src="Images/a_3.jpg" class="img-fluid rounded-circle" alt="Classroom Experience">
                <h4>Unique Classroom Experience</h4>
                <p>Our classrooms are designed for an engaging learning environment.</p>
                <a href="#" class="btn btn-warning">Read More</a>
            </div>
            <div class="col-md-4">
                <img src="Images/a_2.jpg" class="img-fluid rounded-circle" alt="Teachers">
                <h4>Passionate Teachers</h4>
                <p>Our teachers inspire students to achieve their best.</p>
                <a href="#" class="btn btn-warning">Read More</a>
            </div>
        </div>
    </section>

    <!-- Teachers Section -->
    <section class="bg-light py-5 text-center">
        <h2>Teachers</h2>
        <div class="row justify-content-center">
            <div class="col-md-3">
                <img src="Images/a_4.jpg" class="img-fluid rounded" alt="Teacher 1">
                <h5>John Carson</h5>
            </div>
            <div class="col-md-3">
                <img src="Images/a_7.jpg" class="img-fluid rounded" alt="Teacher 2">
                <h5>Miss Smith Ellen</h5>
            </div>
            <div class="col-md-3">
                <img src="Images/a_4.jpg" class="img-fluid rounded" alt="Teacher 3">
                <h5>John Carson</h5>
            </div>
        </div>
    </section>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <jsp:include page="Footer.jsp"/>
</body>
</html>