<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Data Science Course</title>
    
    <!-- Bootstrap & Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
    <!-- Google Font (Optional for React-like design) -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Poppins', sans-serif;
        }

        .icon-box {
            width: 60px;
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            margin-bottom: 10px;
            font-size: 24px;
        }

        .bg-purple { background-color: #6f42c1 !important; }
        .bg-orange { background-color: #fd7e14 !important; }

        .code-box {
            background-color: #1f2937;
            color: #f9fafb;
            border-radius: 0.5rem;
            padding: 1rem;
            font-family: monospace;
            overflow-x: auto;
        }

        .btn {
            border-radius: 12px;
            padding: 10px 20px;
            font-weight: 500;
        }

        .shadow-card {
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
        }
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
        
        
    </style>
</head>
<body>

<div class="container py-5">
    <!-- Course Header -->
    <div class="p-5 text-white rounded shadow text-center" style="background: linear-gradient(to right, #1e3a8a, #0d9488);">
        <span class="badge bg-light text-dark mb-3">Data Science</span>
        <h1 class="display-4 fw-bold">Data Science Mastery</h1>
        <p class="lead">Transform raw data into meaningful insights with Python and modern data tools</p>
    </div>

    <!-- Course Content -->
    <div class="row mt-5">
        <!-- Main content -->
        <div class="col-lg-8">

            <!-- About -->
            <div class="bg-white p-4 mb-4 rounded shadow-card">
                <h2>About this course</h2>
                <p>Data Science combines statistics, programming, and domain expertise to extract knowledge and insights from structured and unstructured data. This course covers the complete data science pipeline from data collection to deployment.</p>
                <p>You’ll learn to use Python for data analysis, build machine learning models, create visualizations, and communicate data-driven insights effectively.</p>
            </div>

            <!-- Technologies -->
            <div class="bg-white p-4 mb-4 rounded shadow-card">
                <h2>Core Technologies</h2>
                <div class="row text-center">
                    <div class="col-6 col-md-4">
                        <div class="icon-box bg-primary text-white"><i class="bi bi-code-slash"></i></div>
                        <h5>Python</h5><p>Programming</p>
                    </div>
                    <div class="col-6 col-md-4">
                        <div class="icon-box bg-success text-white">🟢</div>
                        <h5>Pandas</h5><p>Data Manipulation</p>
                    </div>
                    <div class="col-6 col-md-4">
                        <div class="icon-box bg-warning text-white">🟡</div>
                        <h5>NumPy</h5><p>Numerical Computing</p>
                    </div>
                    <div class="col-6 col-md-4">
                        <div class="icon-box bg-purple text-white">🟣</div>
                        <h5>Tableau</h5><p>Visualization</p>
                    </div>
                    <div class="col-6 col-md-4">
                        <div class="icon-box bg-danger text-white"><i class="bi bi-database-fill"></i></div>
                        <h5>SQL</h5><p>Databases</p>
                    </div>
                    <div class="col-6 col-md-4">
                        <div class="icon-box bg-orange text-white">🟠</div>
                        <h5>Jupyter</h5><p>Notebooks</p>
                    </div>
                </div>
            </div>

            <!-- Curriculum -->
            <div class="bg-white p-4 mb-4 rounded shadow-card">
                <h2>Course Curriculum</h2>
                <div class="mb-3">
                    <h5 class="text-primary">Module 1: Data Fundamentals</h5>
                    <ul>
                        <li>Python for Data Science</li>
                        <li>Data Cleaning & Preprocessing</li>
                        <li>Exploratory Data Analysis (EDA)</li>
                    </ul>
                </div>
                <div class="mb-3">
                    <h5 class="text-info">Module 2: Statistical Analysis</h5>
                    <ul>
                        <li>Descriptive & Inferential Statistics</li>
                        <li>Probability Distributions</li>
                        <li>Hypothesis Testing</li>
                    </ul>
                </div>
                <div class="mb-3">
                    <h5 class="text-success">Module 3: Machine Learning</h5>
                    <ul>
                        <li>Supervised Learning Models</li>
                        <li>Feature Engineering</li>
                        <li>Model Evaluation Metrics</li>
                    </ul>
                </div>
            </div>

            <!-- Code Example -->
            <div class="bg-white p-4 mb-4 rounded shadow-card">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2>Data Analysis Example</h2>
                    <a href="#" class="btn btn-primary">Open in Colab</a>
                </div>
                <div class="code-box">
<pre><code>import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('sales_data.csv')
df = df.dropna()
df['date'] = pd.to_datetime(df['date'])

monthly_sales = df.groupby(df['date'].dt.month)['amount'].sum()

plt.figure(figsize=(10,6))
monthly_sales.plot(kind='bar', color='teal')
plt.title('Monthly Sales Performance')
plt.xlabel('Month')
plt.ylabel('Total Sales ($)')
plt.grid(True)
plt.show()</code></pre>
                </div>
            </div>
        </div>

        <!-- Sidebar -->
        <div class="col-lg-4">
            <!-- Course Details -->
            <div class="bg-white p-4 mb-4 rounded shadow-card">
                <h3>Course Details</h3>
                <p><strong>Duration:</strong> 10 weeks</p>
                <p><strong>Level:</strong> Beginner to Intermediate</p>
                <p><strong>Prerequisites:</strong> Basic programming knowledge</p>
                <p><strong>Projects:</strong></p>
                <ul>
                    <li>Sales Dashboard</li>
                    <li>Customer Segmentation</li>
                    <li>Predictive Model</li>
                </ul>
                <a href="#" class="btn btn-success w-100 mt-3">Enroll Now</a>
            </div>

            <!-- Instructor -->
            <div class="bg-white p-4 mb-4 rounded shadow-card">
                <h3>Instructor</h3>
                <div class="d-flex align-items-center">
                    <img src="https://randomuser.me/api/portraits/women/65.jpg" class="rounded-circle me-3" width="60" height="60" />
                    <div>
                        <h5 class="mb-0">Dr. Emily Chen</h5>
                        <small class="text-muted">Data Science Lead</small>
                    </div>
                </div>
                <p class="mt-3">Former Data Scientist at Microsoft with 10+ years of experience in analytics and machine learning.</p>
            </div>

            <!-- Resources -->
            <div class="bg-white p-4 mb-4 rounded shadow-card">
                <h2>Resources</h2>
			<ul class="resource-list">
			    <li><a href="Images/DataScienceDetail.pdf" target="_blank" class="no-underline">📄 Download Course PDF</a></li>
			    <li><a href="#" class="no-underline">🔗 Share this Course</a></li>
			    <li><a href="#" class="no-underline">📘 Course Syllabus</a></li>
			</ul>
            </div>
        </div>
    </div>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
