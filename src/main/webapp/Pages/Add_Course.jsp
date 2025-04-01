<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Add Course - Admin Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            display: flex;
            background-color: #f4f6f9;
        }

        /* Sidebar already included in Sidebar.jsp */

        /* Main Content */
        .main-content {
            margin-left: 500px; /* Ensures content is placed beside sidebar */
            padding: 30px;
            width: calc(100% - 270px);
        }

        .header {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }

        /* Add Course Form */
        .form-container {
            background: #fff;
            padding: 25px;
            border-radius: 8px;
            width: 60%;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.15);
            border-left: 4px solid #007bff;
        }

        .form-container h2 {
            text-align: center;
            font-weight: 600;
            font-size: 22px;
            margin-bottom: 15px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: 500;
            font-size: 16px;
            margin-bottom: 5px;
        }

        .form-group input, .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Upload Image */
        .upload-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 15px;
        }

        .upload-box {
            border: 2px dashed #007bff;
            padding: 20px;
            text-align: center;
            cursor: pointer;
            border-radius: 5px;
            background: #f1f1f1;
            width: 220px;
            transition: 0.3s;
        }

        .upload-box:hover {
            background: #d9e4fc;
        }

        .upload-box i {
            font-size: 40px;
            color: #007bff;
        }

        /* Submit Button */
        .submit-btn {
            display: block;
            width: 100%;
            padding: 12px;
            border: none;
            background-color: #007bff;
            color: white;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            transition: 0.3s;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .main-content {
                margin-left: 200px;
                width: calc(100% - 200px);
            }
            .form-container {
                width: 80%;
            }
        }

        @media (max-width: 500px) {
            .main-content {
                margin-left: 100px;
                width: calc(100% - 100px);
            }
            .form-container {
                width: 90%;
            }
        }

    </style>
</head>
<body>

  <jsp:include page="Sac.jsp"/>

    <!-- Main Content -->
    <div class="main-content">
        <div class="form-container">
            <h2>Add Course</h2>
            <form action="add_course.jsp" method="post">
                <div class="form-group">
                    <label>Course Name</label>
                    <input type="text" name="course_name" required>
                </div>
                <div class="form-group">
                    <label>Prof. Name</label>
                    <input type="text" name="prof_name" required>
                </div>
                <div class="form-group">
                    <label>Category</label>
                    <input type="text" name="category" required>
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <textarea name="description" rows="4" required></textarea>
                </div>

                <!-- Upload Image -->
                <div class="upload-container">
                    <label class="upload-box">
                        <i class="fa fa-upload"></i>
                        <p>Upload Image</p>
                        <input type="file" name="course_image" accept="image/*" style="display: none;">
                    </label>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="submit-btn">Add</button>
            </form>
        </div>
    </div>

</body>
</html>
