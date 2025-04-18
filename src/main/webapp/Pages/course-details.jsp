<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin-top: 95px;
            background-color: #f3f4f6;
        }

        .header {
            background: linear-gradient(to right, #1e3a8a, #1e40af);
            color: white;
            text-align: center;
            padding: 60px 20px;
        }

        .badge {
            display: inline-block;
            background-color: #e0e7ff;
            color: #1e3a8a;
            padding: 4px 12px;
            border-radius: 12px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .main {
            display: flex;
            flex-wrap: wrap;
            padding: 40px 20px;
            gap: 30px;
            justify-content: center;
        }

        .left, .right {
            background-color: white;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .left {
            flex: 2;
            min-width: 300px;
        }

        .right {
            flex: 1;
            min-width: 250px;
        }

        h2 {
            color: #1e3a8a;
            margin-bottom: 16px;
        }

        .circle-icon {
            display: inline-block;
            width: 24px;
            height: 24px;
            background-color: #dbeafe;
            color: #1e3a8a;
            font-weight: bold;
            border-radius: 50%;
            text-align: center;
            line-height: 24px;
            margin-right: 10px;
        }

        pre {
            background-color: #1f2937;
            color: #f9fafb;
            padding: 15px;
            border-radius: 10px;
            overflow-x: auto;
        }

        .explanation-box {
            background-color: #f3f4f6;
            padding: 10px 15px;
            margin-bottom: 10px;
            border-left: 4px solid #1e3a8a;
            border-radius: 8px;
        }

        .btn-primary {
            background-color: #1e3a8a;
            color: white;
            border: none;
            padding: 10px 16px;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-primary:hover {
            background-color: #1e40af;
        }

        ul {
            padding-left: 0;
            list-style: none;
        }

        ul li {
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #1e3a8a;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <div class="badge">Web Development</div>
        <h1>Introduction to HTML & CSS</h1>
        <p>Master the fundamentals of web development with this comprehensive course</p>
    </div>

    <!-- Main Content -->
    <div class="main">
        <!-- Left Content -->
        <div class="left">
            <!-- About Section -->
            <section>
                <h2>About this course</h2>
                <p>Web development is the process of creating and maintaining websites and web applications...</p>
                <p>This course will take you from zero knowledge to building your first complete website...</p>
            </section>

            <!-- HTML Introduction -->
            <section>
                <h2>HTML Introduction</h2>
                <ul>
                    <li><span class="circle-icon">1</span> HTML stands for Hyper Text Markup Language</li>
                    <li><span class="circle-icon">2</span> HTML is the standard markup language for creating Web pages</li>
                    <li><span class="circle-icon">3</span> HTML describes the structure of a Web page</li>
                    <li><span class="circle-icon">4</span> HTML consists of a series of elements</li>
                    <li><span class="circle-icon">5</span> HTML elements tell the browser how to display the content</li>
                </ul>
            </section>

            <!-- HTML Code Example -->
            <section>
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <h2 style="margin-bottom: 0;">A Simple HTML Document</h2>
                    <button class="btn-primary">Try it Yourself »</button>
                </div>
                <pre><code>&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;Page Title&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;h1&gt;My First Heading&lt;/h1&gt;
    &lt;p&gt;My first paragraph.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;</code></pre>
            </section>

            <!-- Explanation -->
            <section>
                <h2>Example Explained</h2>
                <div class="explanation-box">
                    <strong>&lt;!DOCTYPE html&gt;</strong> defines that this document is an HTML5 document
                </div>
                <div class="explanation-box">
                    <strong>&lt;html&gt;</strong> is the root element of an HTML page
                </div>
                <div class="explanation-box">
                    <strong>&lt;head&gt;</strong> contains meta information about the HTML page
                </div>
                <div class="explanation-box">
                    <strong>&lt;title&gt;</strong> specifies a title for the HTML page
                </div>
                <div class="explanation-box">
                    <strong>&lt;body&gt;</strong> defines the document’s body and visible contents
                </div>
            </section>
        </div>

        <!-- Right Sidebar -->
        <div class="right">
            <h2>Course Details</h2>
            <p><strong>Duration:</strong> 4 weeks</p>
            <p><strong>Level:</strong> Beginner</p>
            <p><strong>Prerequisites:</strong> None</p>
            <p><strong>Includes:</strong></p>
            <ul>
                <li>✔ Hands-on exercises</li>
                <li>✔ Quizzes</li>
                <li>✔ Certificate</li>
            </ul>
            <button class="btn-primary">Enroll Now</button>

            <hr style="margin: 30px 0;">

            <h2>Resources</h2>
            <ul>
                <li><a href="Images/WebALLINONE.pdf" target="_blank">📄 Download Course PDF</a></li>
                <li><a href="#">🔗 Share this Course</a></li>
                <li><a href="#">📘 Course Syllabus</a></li>
            </ul>
        </div>
        <%@ include file="Footer.jsp" %>
    </div>
</body>
</html>
