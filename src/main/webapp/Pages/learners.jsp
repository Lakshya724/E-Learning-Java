<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Skill_Elevate</title>

<style>
    .learners-section {
        text-align: center;
        background-color: #fcfbe6;
        padding: 40px 0;
    }
    .learners-section h2 {
        font-size: 24px;
        font-weight: bold;
        color: #000;
    }
    .learners-container {
        display: flex;
        justify-content: center;
        gap: 30px;
        margin-top: 20px;
    }
    .learner img {
        width: 120px;
        height: 120px;
        object-fit: cover;
        border-radius: 50%;
        border: 3px solid #fff;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .learners-footer {
        background-color: #7676a7;
        padding: 15px;
        color: #fff;
        font-size: 18px;
        font-weight: bold;
        margin-top: 20px;
    }
</style>

</head>
<body>
<div class="learners-section">
    <h2>Some of our Learners</h2>
    <div class="learners-container">
        <div class="learner"><img src="Images/L_img1.webp" alt="Learner 1"></div>
        <div class="learner"><img src="Images/L_img2.jpg" alt="Learner 2"></div>
        <div class="learner"><img src="Images/L_img3.webp" alt="Learner 3"></div>
        <div class="learner"><img src="Images/L_img4.jpg" alt="Learner 4"></div>
        <div class="learner"><img src="Images/L_img5.webp" alt="Learner 5"></div>
    </div>
    <div class="learners-footer">
        <p>Our learners can access content from anywhere in the world.</p>
    </div>
</div>

</body>
</html>