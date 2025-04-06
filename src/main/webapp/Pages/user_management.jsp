<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
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

        .action-buttons button {
            margin-right: 5px;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            border-radius: 5px;
        }

        .edit-btn {
            background-color: #ffc107;
            color: #fff;
        }

        .edit-btn:hover {
            background-color: #e0a800;
        }

        .delete-btn {
            background-color: #dc3545;
            color: #fff;
        }

        .delete-btn:hover {
            background-color: #c82333;
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

        /* Form Heading */
        .form-popup h2 {
            margin-bottom: 15px;
            font-size: 22px;
            color: #ff6f61;
        }


     
	.form-popup {
	    display: none;
	    position: fixed;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 400px; 
	    padding: 40px;
	    background: rgba(255, 255, 255, 0.95);
	    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
	    border-radius: 10px;
	    backdrop-filter: blur(10px);
	    text-align: center;
	}
	
	
	.form-popup input {
	    width: 100%;
	    padding: 14px; 
	    margin-bottom: 16px; 
	    border: 1px solid #ddd;
	    border-radius: 8px;
	    font-size: 18px; 
	    outline: none;
	    transition: 0.3s;
	}
	     
        /* Input Field Focus Effect */
        .form-popup input:focus {
            border-color: #ff6f61;
            box-shadow: 0 0 8px rgba(255, 111, 97, 0.5);
        }

        /* Form Buttons */
        .form-popup button {
            width: 48%;
            padding: 12px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 8px;
            transition: 0.3s;
        }

        .form-popup .save-btn {
            background: #28a745;
            color: white;
        }

        .form-popup .save-btn:hover {
            background: #218838;
        }

        .form-popup .cancel-btn {
            background: #dc3545;
            color: white;
        }

        .form-popup .cancel-btn:hover {
            background: #c82333;
        }

    </style>

    <script>
        function openForm(id, name, email, mobile, password) {
            if (id) {
                document.getElementById("formTitle").innerText = "Edit User";
            } else {
                document.getElementById("formTitle").innerText = "Add New User";
            }

            document.getElementById("userId").value = id || '';
            document.getElementById("name").value = name || '';
            document.getElementById("email").value = email || '';
            document.getElementById("mobile").value = mobile || '';
            document.getElementById("password").value = password || '';

            document.getElementById("userForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("userForm").style.display = "none";
        }
        function confirmDelete(userId) {
            if (confirm("Are you sure you want to delete this user?")) {
                window.location.href = "deleteUser.jsp?id=" + userId;
            }
        }

    </script>
</head>
<body>

   <jsp:include page="Su.jsp"/>

    <div class="content">
        <div class="header">User Management</div>

        <table class="user-table">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile No.</th>
                    <th>Password</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String url = "jdbc:mysql://localhost:3306/skill_Elevate";
                    String user = "root";
                    String password = "";

                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection(url, user, password);
                        stmt = conn.createStatement();
                        String query = "SELECT id, name, email, mobile, password FROM register";
                        rs = stmt.executeQuery(query);

                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("name") %></td>      
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("mobile") %></td>
                    <td><%= rs.getString("password") %></td>
                    
                    <td class="action-buttons">
                        <button class="edit-btn" onclick="openForm('<%= rs.getInt("id") %>', '<%= rs.getString("name") %>', '<%= rs.getString("email") %>', '<%= rs.getString("mobile") %>', '<%= rs.getString("password") %>')">Edit</button>
                        <button class="delete-btn" onclick="confirmDelete('<%= rs.getInt("id") %>')">Delete</button>
                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>

        <button class="add-user" onclick="openForm()">Add New User</button>

        <div id="userForm" class="form-popup">
            <h2 id="formTitle">Add New User</h2>
            <form action="saveUser.jsp" method="post">
                <input type="hidden" id="userId" name="id">
                <input type="text" id="name" name="name" placeholder="Enter Name" required>
                <input type="email" id="email" name="email" placeholder="Enter Email" required>
                <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile No." required>
                <input type="password" id="password" name="password" placeholder="Enter Password" required>
                <input type="password" id="password" name="conf_password" placeholder="Confirm Password" required>
                <button type="submit" class="save-btn">Save</button>
                <button type="button" class="cancel-btn" onclick="closeForm()">Cancel</button>
            </form>
        </div>

    </div>

</body>
</html>
