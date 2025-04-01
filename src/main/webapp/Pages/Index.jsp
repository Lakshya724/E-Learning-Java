<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Skill_Elevate</title>

  <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0px;
            box-sizing: border-box;
            overflow-x: hidden;
        }

        header {
            background-color: #f8f9fa;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            animation: fadeInDown 1s ease;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
        }

        nav ul li {
            margin-right: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: #333;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: #ff5722;
        }

        .hero {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            padding: 50px;
            background-color: #f3f4f6;
            animation: fadeIn 1.5s ease;
        }

        .hero-content {
        	margin-top:150px;
            max-width: 50%;
            margin-left:150px;
        }

        .hero-content h1 {
            font-size: 36px;
            color: #333;
        }

        .hero-content p {
            font-size: 18px;
            color: #555;
        }

        .hero-content button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            margin-right: 10px;
            
            cursor: pointer;
            transition: transform 0.3s, background-color 0.3s;
        }

        .btn-primary {
            background-color: #ff5722;
            color: white;
        }

        .btn-primary:hover {
            transform: scale(1.1);
            background-color: #e64a19;
        }

        .btn-secondary {
            background-color: #6200ea;
            color: white;
        }

        .btn-secondary:hover {
            transform: scale(1.1);
            background-color: #3700b3;
        }

        .services {
            text-align: center;
            padding: 50px 20px;
            background-color: #fff;
            animation: fadeInUp 1.5s ease;
          
            
        }

        .services h2 {
            font-size: 28px;
            margin-bottom: 20px;

        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;

        }

        .service-item {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;

        }

        .service-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            
        }

        .testimonials {
            text-align: center;
            padding: 50px;
            background-color: #f3f4f6;
            animation: fadeIn 1.5s ease;
        }

        .testimonials h2 {
            margin-bottom: 20px;
        }

        .testimonials p {
            font-size: 18px;
            margin-bottom: 30px;
        }

        .testimonials-grid {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        .testimonial-item {
            width: 200px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .testimonial-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .community {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            padding: 50px;
            background-color: #fff;
            animation: fadeIn 1.5s ease;
        }

        .community-content {
            max-width: 50%;
        }

        .community-content h2 {
            font-size: 28px;
            color: #333;
        }

        .community-content p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }

        .community-content button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #ff5722;
            color: white;
            cursor: pointer;
            transition: transform 0.3s, background-color 0.3s;
        }

        .community-content button:hover {
            transform: scale(1.1);
            background-color: #e64a19;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 768px) {
            .hero {
                flex-direction: column;
                text-align: center;
            }

            .hero-content {
                max-width: 100%;
            }

            .services-grid {
                grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));

            }

            .testimonials-grid {
                flex-direction: column;
            }

            .community {
                flex-direction: column;
                text-align: center;
            }

            .community-content {
                max-width: 100%;
            }
        }
     
    .hero-section {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px;
            background-color: white;
        }

        /* Left: Hero Image */
        .hero-image {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hero-image img {
            max-width: 400px;
            border-radius: 10px;
        }

        /* Right: Hero Content */
        .hero-content {
            flex: 1;
            max-width: 500px;
            margin-left: 220px;
        }

        .hero-content h1 {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .hero-content p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }

        /* Features Section */
        .features {
            margin-top: 20px;
            margin-left: 100px;
        }

        .feature-card {
            display: flex;
            align-items: center;
            background: #fff;
            padding: 12px;
            border-radius: 10px;
            border: 2px solid #FFD700;
            margin-bottom: 10px;
            width: 300px;
            transition: 0.3s ease-in-out;
        }

        .feature-card:hover {
            background: #fff9c4;
        }

        .feature-card img {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }

        .feature-card span {
            font-size: 14px;
            font-weight: bold;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .hero-section {
                flex-direction: column;
                text-align: center;
            }

            .hero-content {
                margin-left: 0;
                margin-top: 30px;
            }
            
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

        }
        
        .service-item img {
            width: 50px;
            height: 50px;
            margin-bottom: 10px;
        
        }
        .service-item a {
    text-decoration: none;
    color: inherit; /* Keeps the text color unchanged */
}
        
        
    </style>
</head>
<body>

<jsp:include page="Navbar.jsp"/>


  

    

    <section class="hero">
        <div class="hero-content">
            <h1>Let's Learn to build a Website for your business</h1>
            <p>Join the best platform for web development courses and expert guidance.</p>
          <a href="course.jsp">  <button class="btn-primary">Get Started</button>
             </a>
             
            <a href="Login.jsp" ><button class="btn-secondary">Sign In</button></a>
         
        </div>
        <div class="hero-image">
            <img src="Images/hero.png" alt="Hero Image" style="width: 300px; height: auto;">
        </div>
    </section>

 <section class="services">
    <h2>Courses We Provide</h2>
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

         <section>
     <div class="hero-section">
        <!-- Left: Hero Image -->
        <div class="hero-image">
            <img src="Images/education.png" alt="Learning Illustration">
        </div>

        <!-- Right: Hero Content -->
        <div class="hero-content">
            <h1>The World’s Leading Online Learning Platform</h1>
            <p>Join millions of learners from around the world mastering new skills and advancing their careers.</p>

            <!-- Features -->
            <div class="features">
                <div class="feature-card">
                    <img src="https://cdn-icons-png.flaticon.com/512/25/25694.png" alt="Courses">
                    <span>10,000+ Courses</span>
                </div>
                <div class="feature-card">
                    <img src="https://cdn-icons-png.flaticon.com/512/2910/2910795.png" alt="Expert Instruction">
                    <span>Expert Instruction</span>
                </div>
                <div class="feature-card">
                    <img src="https://cdn-icons-png.flaticon.com/512/4209/4209453.png" alt="Support">
                    <span>24/7 Support</span>
                </div>
    </section>
    

    <section class="testimonials">
        <h2>What Our Students Say</h2>
        <p>450+ students are learning from us</p>
        <div class="testimonials-grid">
            <div class="testimonial-item">
                <p>"Great learning platform!"</p>
                <p>- Alex</p>
            </div>
            <div class="testimonial-item">
                <p>"Highly recommend!"</p>
                <p>- Maria</p>
            </div>
            <div class="testimonial-item">
                <p>"Amazing support!"</p>
                <p>- John</p>
            </div>
        </div>
    </section>
    
   

    <section class="community">
        <div class="community-content">
            <h2>Join Our Community to Start Your Journey</h2>
            <p>Learn from experts and connect with a supportive community. Start your web development career today!</p>
            <button>Join Now</button>
        </div>
        <div class="community-image">
            <img src="Images/banner.png" alt="Community" style="width: 300px; height: auto;">
        </div>
    </section>



<jsp:include page="Footer.jsp"/>



</body>
</html>

