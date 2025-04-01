<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- Font Awesome for Eye Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
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
            height: 100vh;
            background: #E6DAF0;
        }
        .container {
            width: 100%;
            max-width: 500px;
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            opacity: 0; /* Initially hidden */
            transform: translateY(-20px);
            animation: fadeIn 0.8s ease-in-out forwards;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        h2 {
            font-size: 28px;
            font-weight: bold;
            color: #000;
            margin-bottom: 20px;
        }
        .input-box {
            text-align: left;
            margin: 15px 0;
        }
        label {
            font-size: 16px;
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }
        input {
            width: 100%;
            padding: 14px;
            border: 2px solid #D4AF65;
            border-radius: 8px;
            font-size: 18px;
            background: white;
            color: black;
        }
        input:focus {
            outline: none;
            border-color: #C49A50;
            box-shadow: 0px 0px 8px rgba(212, 175, 101, 0.5);
        }
        .password-container {
            position: relative;
        }
        .password-container input {
            padding-right: 40px;
        }
        .toggle-password {
    position: absolute;
    right: 15px;
    top: 50%;
    transform: translateY(-50%);
    cursor: pointer;
    color: black;
    font-size: 18px;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100%;
    margin-top:10px;
}
        .forgot-password {
            display: block;
            text-align: right;
            margin: 5px 0;
            font-size: 15px;
            color: #6D5D79;
        }
        button {
            width: 100%;
            padding: 14px;
            background: #D4AF65;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 20px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 20px;
            transition: 0.3s;
        }
        button:hover {
            background: #C49A50;
        }
        .divider {
            margin: 20px 0;
            border-bottom: 1px solid #6D5D79;
        }
        .signup {
            font-size: 18px;
            color: black;
        }
        .signup a {
            text-decoration: none;
            font-weight: bold;
            color: #D4AF65;
        }
        
         .error-box {
        background: #ffcccc;
        color: #b30000;
        padding: 12px;
        border-radius: 8px;
        font-weight: bold;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        box-shadow: 0px 4px 10px rgba(255, 0, 0, 0.2);
        margin-bottom: 15px;
        opacity: 1;
        transition: opacity 0.5s ease-in-out;
    }
    .error-box i {
        font-size: 18px;
    }
        
    </style>
</head>
<body>
    <div class="container">
    
    <% String error = request.getParameter("error"); %>
<% if (error != null) { %>
    <div id="error-message" class="error-box">
        <p><i class="fa-solid fa-triangle-exclamation"></i> <%= error %></p>
    </div>
<% } %>
    
        <h2>Login to your Account</h2>
    
        
        <form action="<%=request.getContextPath() %>/LoginServlet" method="POST">
            <% String enteredEmail = request.getParameter("email"); %>
<div class="input-box">
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" placeholder="Enter your email" value="<%= (enteredEmail != null) ? enteredEmail : "" %>" required>
</div>
            <div class="input-box password-container">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
                <span class="toggle-password" onclick="togglePassword()">
                    <i class="fa-solid fa-eye-slash"></i>
                </span>
            </div>
            <a href="Forget_Password.jsp" class="forgot-password">Forgot Password?</a>
            <button type="submit">Sign In</button>
        </form>
        
        <div class="divider"></div>
        
        <p class="signup">Don’t have an account? <a href="Register.jsp">Sign-up</a></p>
    </div>

    <script>
    
    document.addEventListener("DOMContentLoaded", function () {
        setTimeout(function () {
            var errorBox = document.getElementById("error-message");
            if (errorBox) {
                errorBox.style.transition = "opacity 0.5s ease-in-out";
                errorBox.style.opacity = "0";
                setTimeout(function () {
                    errorBox.style.display = "none";
                }, 500);
            }
        }, 3000);
    });
    
        function togglePassword() {
            var passwordField = document.getElementById("password");
            var icon = document.querySelector(".toggle-password i");

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
