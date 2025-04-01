<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course List - Admin Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
        }

        /* Container */
        .container {
            width: 90%;
            margin-top:50px;
            margin-left:300px;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            border: 2px solid #007bff;
        }

        /* Table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        th, td {
            border-bottom: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background: linear-gradient(to right, #a8c7ff, #e3eeff);
            font-weight: bold;
            text-align: center;
        }

        td {
            text-align: center;
        }

        /* Image */
        .course-image {
            width: 80px;
            height: 80px;
            object-fit: contain;
        }

        /* Buttons */
        .edit-btn {
            background: #333;
            color: white;
            border: none;
            padding: 6px 12px;
            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .edit-btn:hover {
            background: #555;
        }

        .remove-btn {
            background: red;
            color: white;
            border: none;
            padding: 6px 12px;
            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .remove-btn:hover {
            background: darkred;
        }
    </style>
</head>
<body>
<jsp:include page="Sl.jsp"/>
<div class="container">
    <h2 style="text-align: center; color: #333;">Course List</h2>

    <table>
        <thead>
            <tr>
                <th>Image</th>
                <th>Title</th>
                <th>Category</th>
                <th>Prof. Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>

          
          <tr>
                <td><img src="Images/img14.png" alt="Flutter" class="course-image"></td>
                <td>NumPy</td>
                <td>AI/ML</td>
                <td>Prof. Neha Chauhan</td>
                <td>
                    <button class="edit-btn">Edit</button>
                    <button class="remove-btn">Remove</button>
                </td>
            </tr>
          
          
            <tr>
                <td><img src="Images/img8.png" alt="Flutter" class="course-image"></td>
                <td>Mobile Application Development using Flutter</td>
                <td>Mobile Development</td>
                <td>Prof. Nikunj Vadher</td>
                <td>
                    <button class="edit-btn">Edit</button>
                    <button class="remove-btn">Remove</button>
                </td>
            </tr>

            <tr>
                <td><img src="Images/img13.png" alt="Python" class="course-image"></td>
                <td>Python</td>
                <td>Data Science</td>
                <td>Prof. Snehal Sathwara</td>
                <td>
                    <button class="edit-btn">Edit</button>
                    <button class="remove-btn">Remove</button>
                </td>
            </tr>

            <tr>
                <td><img src="Images/img5.png" alt="JavaScript" class="course-image"></td>
                <td>JavaScript</td>
                <td>Web Development</td>
                <td>Prof. Dinesh Joshi</td>
                <td>
                    <button class="edit-btn">Edit</button>
                    <button class="remove-btn">Remove</button>
                </td>
            </tr>
            
            <tr>
                <td><img src="Images/img19.png" alt="Flutter" class="course-image"></td>
                <td>Excel</td>
                <td>Data Science</td>
                <td>Prof. Paresh Tanna</td>
                <td>
                    <button class="edit-btn">Edit</button>
                    <button class="remove-btn">Remove</button>
                </td>
            </tr>

        </tbody>
    </table>
</div>

</body>
</html>
