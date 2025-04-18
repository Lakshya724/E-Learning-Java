<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Add Course - Admin Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            display: flex;
            background-color: #eef3f7;
        }
        .main-content {
            margin-left: 270px;
            padding: 30px;
            width: calc(100% - 270px);
        }
        .form-container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            width: 60%;
            margin: auto;
            box-shadow: 0 6px 15px rgba(0,0,0,0.1);
            border-left: 5px solid #007bff;
        }
        .form-container h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 25px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            font-weight: 600;
            display: block;
            margin-bottom: 5px;
        }
        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }
        .upload-container {
            display: flex;
            justify-content: center;
            margin-bottom: 15px;
        }
        .upload-box {
            border: 2px dashed #007bff;
            padding: 25px;
            text-align: center;
            background: #f1f9ff;
            width: 260px;
            border-radius: 8px;
            cursor: pointer;
            position: relative;
        }
        .upload-box i {
            font-size: 40px;
            color: #007bff;
        }
        .upload-box input[type="file"] {
            opacity: 0;
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            width: 100%;
            cursor: pointer;
        }
        .file-name {
            margin-top: 10px;
            font-size: 14px;
            color: #333;
        }
        .submit-btn {
            width: 100%;
            padding: 14px;
            background-color: #007bff;
            color: white;
            font-size: 17px;
            font-weight: bold;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .submit-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<jsp:include page="Sac.jsp"/>

<div class="main-content">
    <div class="form-container">
        <h2>Add Course</h2>
        <form action="<%=request.getContextPath() %>/AddCourseServlet" method="post" enctype="multipart/form-data">
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
                <select name="category" id="category" onchange="handleCategoryChange()" required>
                    <option value="">-- Select Category --</option>
                    <option value="Web">Web</option>
                    <option value="Mobile">Mobile</option>
                    <option value="DataScience">DataScience</option>
                    <option value="AIML">AIML</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <div class="form-group" id="otherCategoryGroup" style="display: none;">
                <label>Enter Category</label>
                <input type="text" name="other_category" id="otherCategoryInput">
            </div>

            <div class="form-group">
                <label>Description</label>
                <textarea name="description" rows="4" required></textarea>
            </div>

            <div class="upload-container">
                <label class="upload-box">
                    <i class="fa fa-upload"></i>
                    <p>Upload Image</p>
                    <input type="file" name="course_image" accept="image/*" onchange="showFileName(this)" required>
                    <div class="file-name" id="fileName">No file chosen</div>
                </label>
            </div>
            <button type="submit" class="submit-btn">Add</button>
        </form>
    </div>
</div>

<%
    String success = (String) request.getAttribute("success");
    if ("true".equals(success)) {
%>
<script>
    alert("Course added successfully!");
</script>
<%
    }
%>

<!-- Script to toggle Other category input -->
<script>
function handleCategoryChange() {
    const categorySelect = document.getElementById("category");
    const otherCategoryGroup = document.getElementById("otherCategoryGroup");

    if (categorySelect.value === "Other") {
        otherCategoryGroup.style.display = "block";
        document.getElementById("otherCategoryInput").required = true;
    } else {
        otherCategoryGroup.style.display = "none";
        document.getElementById("otherCategoryInput").required = false;
    }
}

function showFileName(input) {
    const fileName = input.files[0] ? input.files[0].name : "No file chosen";
    document.getElementById("fileName").innerText = fileName;
}
</script>

</body>
</html>
