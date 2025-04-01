<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us - Skill_Elevate</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #fdfbe3;
        padding-top: 75px;
    }
    .container {
        max-width: 900px;
        margin: 40px auto;
    }
    h1 {
        font-size: 42px;
        font-weight: bold;
        margin-bottom: 20px;
        text-align: center;
    }
    .support-card {
        text-align: center;
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        transition: 0.3s ease-in-out;
        margin-bottom: 15px;
    }
    .support-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }
    .icon {
        font-size: 40px;
        color: #007bff;
    }
    .form-container {
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .btn-primary {
        width: 100%;
        padding: 10px;
        font-size: 18px;
    }
</style>
</head>
<body>

<jsp:include page="Navbar.jsp"/>

<div class="container">
    <h1>Contact Us</h1>
    <p class="text-center">
        <b>Have questions about our courses, need technical support, or want to collaborate?  
        Our team is here to assist you! Send us a message and we'll get back to you as soon as possible.</b>
    </p>

    <div class="row">
        <!-- Left Side: Support & Assistance -->
        <div class="col-md-5">
            <div class="support-card">
                <div class="icon">📞</div>
                <h4>Support</h4>
                <p>We are here to help. Contact us for any queries or support.</p>
            </div>
            <div class="support-card">
                <div class="icon">💡</div>
                <h4>Assistance</h4>
                <p>Reach out for technical or course-related assistance anytime.</p>
            </div>
        </div>

        <!-- Right Side: Contact Form -->
        <div class="col-md-7">
            <div class="form-container">
                <form action="ContactServlet" method="post">
                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" placeholder="Enter your name" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Message</label>
                        <textarea name="message" class="form-control" rows="4" placeholder="Write your message" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="Footer.jsp"/>

</body>
</html>
