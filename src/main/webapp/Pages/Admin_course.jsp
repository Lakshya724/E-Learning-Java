<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course List</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f6f9;
        }

        .container {
            margin: 40px 20px 40px 300px;
            width: calc(100% - 340px);
            border: 2px solid #007bff;
            border-radius: 8px;
            background-color: white;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #222;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
        }

        th, td {
            padding: 15px;
            text-align: center;
        }

        th {
            background-color: #cfe2ff;
            color: #000;
        }

        tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        .edit-btn, .delete-btn {
            padding: 8px 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .edit-btn {
            background-color: #343a40;
            color: white;
        }

        .delete-btn {
            background-color: red;
            color: white;
        }

        .edit-btn:hover {
            background-color: #23272b;
        }

        .delete-btn:hover {
            background-color: darkred;
        }

        .nowrap {
            white-space: nowrap;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <jsp:include page="Sl.jsp"/>
</div>

<div class="container">
    <h2>Course List</h2>

    <table border="1">
        <tr>
            <th>Course Id</th>
            <th>Title</th>
            <th>Category</th>
            <th>Prof. Name</th>
            <th>Created At</th>
            <th>Actions</th>
        </tr>

        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");
                ps = conn.prepareStatement("SELECT * FROM Courses");
                rs = ps.executeQuery();

                while (rs.next()) {
                    int id = rs.getInt("course_id");
                    String title = rs.getString("course_name");
                    String category = rs.getString("category");
                    String profName = rs.getString("professor_name");
                    Timestamp createdAt = rs.getTimestamp("created_at");
                    String formattedCreatedAt = (createdAt != null) ? new java.text.SimpleDateFormat("yyyy-MM-dd").format(createdAt) : "N/A";
        %>
        <tr>
            <td><%=id%></td>
            <td><%=title%></td>
            <td><%=category%></td>
            <td><%=profName%></td>
            <td class="nowrap"><%=formattedCreatedAt%></td>
            <td>
                <form action="Edit_Course.jsp" method="get" style="display:inline;">
                    <input type="hidden" name="id" value="<%=id%>">
                    <button type="submit" class="edit-btn">Edit</button>
                    <br>
                </form>
                <form action="DeleteCourse.jsp" method="post" onsubmit="return confirm('Are you sure you want to delete this course?');" style="display:inline;">
                    <input type="hidden" name="id" value="<%=id%>">
                    <br>
                    <button type="submit" class="delete-btn">Remove</button>
                </form>
            </td>
        </tr>
        <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='6'>Error: " + e.getMessage() + "</td></tr>");
            } finally {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            }
        %>
    </table>
</div>

</body>
</html>
