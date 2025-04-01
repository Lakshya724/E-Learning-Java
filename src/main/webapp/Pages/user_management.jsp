<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
    <style>
        body {
            font-family: 'Black Chancery', cursive;
            margin: 0;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            color: #333;
            display: flex;
            min-height: 100vh;
        }

       
        .content {
            flex: 1;
            margin-left: 250px;
            padding: 30px;
            background-color: #f8f9fa;
        }

        .header {
            background-color: #ff6f61;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-size: 28px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            margin-bottom: 30px;
        }

        .user-table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .user-table th, .user-table td {
            border: 1px solid #ddd;
            padding: 15px;
            text-align: left;
        }

        .user-table th {
            background-color: #ff6f61;
            color: white;
            font-weight: bold;
            font-size: 18px;
        }

        .user-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .user-table tr:hover {
            background-color: #e0e0e0;
        }

        .add-user {
            margin-top: 20px;
            padding: 12px 25px;
            background-color: #007bff;
            color: white;
            text-align: center;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border: none;
            display: inline-block;
            margin: 20px auto;
        }

        .add-user:hover {
            background-color: #0056b3;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        /* Profile Section */
        .profile-section {
            text-align: center;
            margin-bottom: 20px;
            padding: 10px;
        }

        .profile-section img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 3px solid #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 10px;
            object-fit: cover;
        }

        .profile-section p {
            font-size: 16px;
            color: #fff;
            margin: 5px 0;
        }

        .edit-profile-btn {
            padding: 8px 16px;
            font-size: 14px;
            background-color: #28a745; /* Changed to green for consistency */
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .edit-profile-btn:hover {
            background-color: #218838; /* Darker green on hover */
        }
    </style>
</head>
<body>
   <jsp:include page="Su.jsp"/>

    <div class="content">
        <div class="header">
            User Management
        </div>

        <table class="user-table">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>John Doe</td>
                    <td>johndoe@example.com</td>
                    <td>Admin</td>
                    <td><button>Edit</button> <button>Delete</button></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jane Smith</td>
                    <td>janesmith@example.com</td>
                    <td>User</td>
                    <td><button>Edit</button> <button>Delete</button></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Sam Wilson</td>
                    <td>samwilson@example.com</td>
                    <td>Moderator</td>
                    <td><button>Edit</button> <button>Delete</button></td>
                </tr>
            </tbody>
        </table>

        <div class="add-user">Add New User</div>
    </div>
</body>
</html>