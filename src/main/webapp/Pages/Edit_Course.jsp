<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int courseId = Integer.parseInt(request.getParameter("id"));

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String courseName = "";
    String category = "";
    String professorName = "";
    String description = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skill_Elevate", "root", "");
        ps = conn.prepareStatement("SELECT * FROM Courses WHERE course_id = ?");
        ps.setInt(1, courseId);
        rs = ps.executeQuery();

        if (rs.next()) {
            courseName = rs.getString("course_name");
            category = rs.getString("category");
            professorName = rs.getString("professor_name");
            description = rs.getString("description");
        }

    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Course | Skill Elevate</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4361ee;
            --primary-hover: #3a56d4;
            --secondary-color: #f8f9fa;
            --text-color: #343a40;
            --border-color: #dee2e6;
            --shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --border-radius: 8px;
            --transition: all 0.3s ease;
        }
        
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--secondary-color);
            color: var(--text-color);
            line-height: 1.6;
            padding: 0;
            margin: 0;
            overflow-x: hidden;
        }
        
        .container {
            display: flex;
            min-height: 100vh;
            position: relative;
        }
        
        .sidebar {
            width: 250px;
            background-color: white;
            box-shadow: var(--shadow);
            padding: 20px 0;
            position: fixed;
            height: 100vh;
            z-index: 100;
        }
		.main-content {
		    flex: 1;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    padding: 30px;
		    margin-left: 500px; /* Keep this for sidebar spacing */
		    width: calc(100% - 250px);
		}
		
		.edit-form-container {
		    width: 900px;
		    min-height: 600px;
		    background: white;
		    border-radius: var(--border-radius);
		    box-shadow: var(--shadow);
		    overflow: hidden;
		    display: flex;
		    flex-direction: column;
		    justify-content: center;
		}

        
        .form-header {
            background-color: var(--primary-color);
            color: white;
            padding: 20px;
            margin-bottom: 25px;
        }
        
        .form-header h2 {
            font-weight: 500;
        }
        
        .form-body {
            padding: 0 30px 30px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--text-color);
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            font-size: 15px;
            border: 1px solid var(--border-color);
            border-radius: var(--border-radius);
            transition: var(--transition);
            font-family: 'Poppins', sans-serif;
        }
        
        .form-control:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.2);
        }
        
        textarea.form-control {
            min-height: 120px;
            resize: vertical;
        }
        
        .btn {
            display: inline-block;
            background-color: var(--primary-color);
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: var(--border-radius);
            font-size: 16px;
            cursor: pointer;
            transition: var(--transition);
            font-family: 'Poppins', sans-serif;
            font-weight: 500;
        }
        
        .btn:hover {
            background-color: var(--primary-hover);
            transform: translateY(-2px);
        }
        
        .btn-block {
            display: block;
            width: 100%;
        }
        
        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: var(--primary-color);
            text-decoration: none;
            transition: var(--transition);
        }
        
        .back-link:hover {
            text-decoration: underline;
        }
        
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
            
            .sidebar {
                position: relative;
                width: 100%;
                height: auto;
            }
            
            .main-content {
                margin-left: 0;
                width: 100%;
                padding: 20px;
            }
            
            .form-body {
                padding: 0 20px 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <aside class="sidebar">
           <jsp:include page="Sl.jsp"/>
        </aside>
        
        <main class="main-content">
            <div class="edit-form-container">
                <div class="form-header">
                    <h2>Edit Course</h2>
                </div>
                
                <div class="form-body">
                    <form action="UpdateCourse.jsp" method="post">
                        <input type="hidden" name="course_id" value="<%=courseId%>">
                        
                        <div class="form-group">
                            <label for="course_name">Course Title</label>
                            <input type="text" id="course_name" name="course_name" class="form-control" value="<%=courseName%>" required>
                        </div>
                        
                        <div class="form-group">
						    <label for="category">Category</label>
						    <select id="category" name="category" class="form-control" required>
						    	<option value="Web" <%= category.equals("select") ? "selected" : "" %>>Select Category</option>
						        <option value="Web" <%= category.equals("Web") ? "selected" : "" %>>Web</option>
						        <option value="Mobile" <%= category.equals("Mobile") ? "selected" : "" %>>Mobile</option>
						        <option value="AIML" <%= category.equals("AIML") ? "selected" : "" %>>AIML</option>
						        <option value="DataScience" <%= category.equals("DataScience") ? "selected" : "" %>>DataScience</option>
						    </select>
						</div>
                        
                        <div class="form-group">
                            <label for="professor_name">Professor Name</label>
                            <input type="text" id="professor_name" name="professor_name" class="form-control" value="<%=professorName%>" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="description">Description</label>
                            <textarea id="description" name="description" class="form-control" required><%=description%></textarea>
                        </div>
                        
                        <button type="submit" class="btn btn-block">Update Course</button>
                    </form>
                    
                    <a href="javascript:history.back()" class="back-link">← Back to courses</a>
                </div>
            </div>
        </main>
    </div>
</body>
</html>