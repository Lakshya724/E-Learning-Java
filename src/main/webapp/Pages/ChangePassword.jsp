<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password | Skill Elevate</title>
    
    <!-- Font Awesome for Eye Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary-color: #4361ee;
            --secondary-color: #3f37c9;
            --error-color: #ff3333;
            --success-color: #4bb543;
            --light-gray: #f5f7fa;
            --dark-gray: #6c757d;
            --border-color: #dee2e6;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: var(--light-gray);
            padding: 20px;
        }
        
        .password-container {
            width: 100%;
            max-width: 500px;
            background: white;
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        
        .password-header {
            text-align: center;
            margin-bottom: 2rem;
        }
        
        .password-header h2 {
            font-size: 1.8rem;
            font-weight: 600;
            color: var(--primary-color);
            margin-bottom: 0.5rem;
        }
        
        .password-header p {
            color: var(--dark-gray);
            font-size: 1rem;
        }
        
        .alert {
            padding: 1rem;
            margin-bottom: 1.5rem;
            border-radius: 8px;
            font-size: 0.9rem;
        }
        
        .alert-error {
            background-color: rgba(255, 51, 51, 0.1);
            color: var(--error-color);
            border: 1px solid rgba(255, 51, 51, 0.2);
        }
        
        .alert-success {
            background-color: rgba(75, 181, 67, 0.1);
            color: var(--success-color);
            border: 1px solid rgba(75, 181, 67, 0.2);
        }
        
        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: var(--dark-gray);
        }
        
        .form-control {
            width: 100%;
            padding: 0.9rem 3rem 0.9rem 1rem;
            font-size: 1rem;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            transition: all 0.3s ease;
        }
        
        .form-control:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.2);
        }
        
        .password-toggle {
		    position: absolute;
		    right: 1rem;
		    top: 70%; /* Adjusted from 50% to 55% */
		    transform: translateY(-50%);
		    cursor: pointer;
		    color: var(--dark-gray);
		    width: 1.5rem;
		    height: 1.5rem;
		    display: flex;
		    align-items: center;
		    justify-content: center;
}

        .btn {
            width: 100%;
            padding: 1rem;
            background: var(--primary-color);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 1rem;
        }
        
        .btn:hover {
            background: var(--secondary-color);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .divider {
            margin: 1.5rem 0;
            border-bottom: 1px solid var(--border-color);
        }
        
        .back-link {
            text-align: center;
            font-size: 0.9rem;
            color: var(--dark-gray);
        }
        
        .back-link a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
        }
        
        .back-link a:hover {
            text-decoration: underline;
        }
        
        @media (max-width: 576px) {
            .password-container {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="password-container">
        <div class="password-header">
            <h2>Change Password</h2>
            <p>Please enter your old and new password</p>
        </div>
        
        <% 
            String error = request.getParameter("error");
            String success = request.getParameter("success");
            
            if (error != null) { 
        %>
            <div class="alert alert-error">
                <i class="fas fa-exclamation-circle"></i> <%= error %>
            </div>
        <% } %>
        
        <% if (success != null) { %>
            <div class="alert alert-success">
                <i class="fas fa-check-circle"></i> <%= success %>
            </div>
        <% } %>
        
        <form action="<%=request.getContextPath()%>/ChangePasswordServlet" method="POST">
            <div class="form-group">
                <label for="oldPassword">Old Password</label>
                <input type="password" name="oldPassword" id="oldPassword" class="form-control" placeholder="Enter your current password" required>
                <span class="password-toggle" onclick="togglePassword('oldPassword', this)">
                    <i class="fa-solid fa-eye-slash"></i>
                </span>
            </div>
            
            <div class="form-group">
                <label for="newPassword">New Password</label>
                <input type="password" name="newPassword" id="newPassword" class="form-control" placeholder="Enter your new password" required>
                <span class="password-toggle" onclick="togglePassword('newPassword', this)">
                    <i class="fa-solid fa-eye-slash"></i>
                </span>
            </div>
            
            <div class="form-group">
                <label for="confirmPassword">Confirm New Password</label>
                <input type="password" name="confirmPassword" id="confirmPassword" class="form-control" placeholder="Confirm your new password" required>
                <span class="password-toggle" onclick="togglePassword('confirmPassword', this)">
                    <i class="fa-solid fa-eye-slash"></i>
                </span>
            </div>
            
            <button type="submit" class="btn">Change Password</button>
        </form>
        
        <div class="divider"></div>
        
        <p class="back-link">Back to <a href="Login.jsp">Login</a></p>
    </div>

    <script>
        function togglePassword(fieldId, iconElement) {
            const passwordField = document.getElementById(fieldId);
            const icon = iconElement.querySelector("i");

            if (passwordField.type === "password") {
                passwordField.type = "text";
                icon.classList.remove("fa-eye-slash");
                icon.classList.add("fa-eye");
            } else {
                passwordField.type = "password";
                icon.classList.remove("fa-eye");
                icon.classList.add("fa-eye-slash");
            }
        }
    </script>
</body>
</html>