<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Mobile Development Course</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
  <style>
  
  	  h2 {
            color: #1e3a8a;
            margin-top: 16px;
            font-size: 30px;
            font-weight:bold;
            text-decoration: none;
        }
        .no-underline {
		    text-decoration: none !important;
		}
		
		.no-underline:hover {
		    text-decoration: none !important;
		}
    	
    	.resource-link:hover {
    background-color: var(--primary-light);
    /* Remove this line: text-decoration: underline; */
}

    .gradient-header {
      background: linear-gradient(to right, #6b21a8, #4f46e5);
      color: white;
      border-radius: 1rem;
    }
    .tech-icon {
      font-size: 2rem;
    }
    .circle-icon {
      display: inline-block;
      width: 8px;
      height: 8px;
      background-color: #9ca3af;
      border-radius: 50%;
      margin-top: 6px;
      margin-right: 10px;
    }
  </style>
</head>
<body class="bg-light">

<main class="container py-5">

  <!-- Header -->
  <div class="gradient-header text-center p-5 mb-5 shadow">
    <span class="badge bg-white text-dark mb-3">Mobile Development</span>
    <h1 class="display-5 fw-bold">Master Mobile App Development</h1>
    <p class="lead">Build cross-platform and native mobile apps with industry-standard technologies</p>
  </div>

  <div class="row g-4">
    <!-- Main Content -->
    <div class="col-lg-8">

      <!-- About -->
      <div class="bg-white p-4 rounded shadow-sm mb-4">
        <h2 class="h4 fw-bold">About this course</h2>
        <p>Mobile development is the process of creating software applications that run on mobile devices. This course covers both native (iOS/Android) and cross-platform development approaches, teaching you how to build professional-quality mobile apps from scratch.</p>
        <p>You’ll learn fundamental concepts, platform-specific development, UI/UX best practices, and how to publish your apps to the App Store and Google Play Store.</p>
      </div>

      <!-- Technologies -->
      <div class="bg-white p-4 rounded shadow-sm mb-4">
        <h2 class="h4 fw-bold mb-3">Technologies You’ll Learn</h2>
        <div class="row g-3 text-center">
          <div class="col-6 col-md-4">
            <div class="border p-3 rounded">
              <div class="text-primary mb-2"><i class="fab fa-react tech-icon"></i></div>
              <h6 class="mb-0">React Native</h6>
              <small class="text-muted">Cross-platform</small>
            </div>
          </div>
          <div class="col-6 col-md-4">
            <div class="border p-3 rounded">
              <div class="text-info mb-2"><i class="fab fa-google tech-icon"></i></div>
              <h6 class="mb-0">Flutter</h6>
              <small class="text-muted">Cross-platform</small>
            </div>
          </div>
          <div class="col-6 col-md-4">
            <div class="border p-3 rounded">
              <div class="text-success mb-2"><i class="fab fa-android tech-icon"></i></div>
              <h6 class="mb-0">Android</h6>
              <small class="text-muted">Native</small>
            </div>
          </div>
          <div class="col-6 col-md-4">
            <div class="border p-3 rounded">
              <div class="text-secondary mb-2"><i class="fab fa-apple tech-icon"></i></div>
              <h6 class="mb-0">iOS</h6>
              <small class="text-muted">Native</small>
            </div>
          </div>
          <div class="col-6 col-md-4">
            <div class="border p-3 rounded">
              <div class="text-purple mb-2"><i class="fa-brands fa-kickstarter-k tech-icon"></i></div>
              <h6 class="mb-0">Kotlin</h6>
              <small class="text-muted">Android</small>
            </div>
          </div>
          <div class="col-6 col-md-4">
            <div class="border p-3 rounded">
              <div class="text-warning mb-2"><i class="fa-brands fa-swift tech-icon"></i></div>
              <h6 class="mb-0">Swift</h6>
              <small class="text-muted">iOS</small>
            </div>
          </div>
        </div>
      </div>

      <!-- Curriculum -->
      <div class="bg-white p-4 rounded shadow-sm mb-4">
        <h2 class="h4 fw-bold mb-3">Course Curriculum</h2>

        <div class="mb-4 ps-3 border-start border-4 border-primary">
          <h5>Module 1: Mobile Development Fundamentals</h5>
          <ul class="list-unstyled mt-2">
            <li><span class="circle-icon"></span> Introduction to mobile platforms</li>
            <li><span class="circle-icon"></span> Mobile UI/UX principles</li>
            <li><span class="circle-icon"></span> Setting up development environments</li>
          </ul>
        </div>

        <div class="mb-4 ps-3 border-start border-4 border-info">
          <h5>Module 2: Cross-Platform Development</h5>
          <ul class="list-unstyled mt-2">
            <li><span class="circle-icon"></span> React Native fundamentals</li>
            <li><span class="circle-icon"></span> Flutter widgets and state management</li>
            <li><span class="circle-icon"></span> Building your first cross-platform app</li>
          </ul>
        </div>

        <div class="mb-4 ps-3 border-start border-4 border-success">
          <h5>Module 3: Native Android Development</h5>
          <ul class="list-unstyled mt-2">
            <li><span class="circle-icon"></span> Kotlin basics for Android</li>
            <li><span class="circle-icon"></span> Android Studio and Jetpack components</li>
            <li><span class="circle-icon"></span> Publishing to Google Play Store</li>
          </ul>
        </div>
      </div>

      <!-- Code Example -->
      <div class="bg-white p-4 rounded shadow-sm mb-4">
        <div class="d-flex justify-content-between align-items-center mb-3">
          <h4 class="fw-bold">React Native Example</h4>
          <a href="https://snack.expo.dev" target="_blank" class="btn btn-sm btn-primary">Try in Snack</a>
        </div>
        <div class="bg-dark text-light rounded p-3">
<pre><code>
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const App = () => {
  return (
    &lt;View style={styles.container}&gt;
      &lt;Text style={styles.text}&gt;Hello Mobile World!&lt;/Text&gt;
    &lt;/View&gt;
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  text: {
    fontSize: 24,
    fontWeight: 'bold',
  },
});

export default App;
</code></pre>
        </div>
      </div>
    </div>

    <!-- Sidebar -->
    <div class="col-lg-4">
      <div class="bg-white p-4 rounded shadow-sm mb-4">
        <h5 class="fw-bold mb-3">Course Details</h5>
        <p><strong>Duration:</strong> 8 weeks (recommended pace)</p>
        <p><strong>Level:</strong> Beginner to Intermediate</p>
        <p><strong>Prerequisites:</strong> Basic JavaScript knowledge</p>
        <p><strong>Projects:</strong></p>
        <ul class="list-unstyled ps-3">
          <li><i class="fas fa-check-circle text-success me-2"></i>Weather App</li>
          <li><i class="fas fa-check-circle text-success me-2"></i>Social Media App</li>
          <li><i class="fas fa-check-circle text-success me-2"></i>E-commerce App</li>
        </ul>
        <a href="#" class="btn btn-purple w-100 mt-3 text-white" style="background-color:#6b21a8;">Enroll Now</a>
      </div>

      <div class="bg-white p-4 rounded shadow-sm mb-4">
        <h5 class="fw-bold mb-3">Instructor</h5>
        <div class="d-flex align-items-center mb-3">
          <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="Instructor" class="rounded-circle me-3" width="64" height="64" />
          <div>
            <h6 class="mb-0">Sarah Johnson</h6>
            <small class="text-muted">Senior Mobile Developer</small>
            <div class="text-warning">
              <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
            </div>
            
          </div>
          
        </div>
        <p>With over 8 years of experience in mobile development, Sarah has built apps for Fortune 500 companies and startups alike.</p>
      </div>
      
		<div class="bg-white p-4 mb-4 rounded shadow-card">
                <h2>Resources</h2>
			<ul class="resource-list">
			    <li><a href="Images/Mobile.pdf" target="_blank" class="no-underline">📄 Download Course PDF</a></li>
			    <li><a href="#" class="no-underline">🔗 Share this Course</a></li>
			    <li><a href="#" class="no-underline">📘 Course Syllabus</a></li>
			</ul>
            </div>
			
			    </div>
			  </div>
			</main>



<%@ include file="Footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
