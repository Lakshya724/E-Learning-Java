<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>

    <!-- Font Awesome for Eye Icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
        /* Your original CSS remains unchanged */
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
        }
        h2 {
            font-size: 28px;
            font-weight: bold;
            color: #000;
            margin-bottom: 20px;
        }
        .input-box {
            position: relative;
            margin: 10px 0;
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
        .login-link {
            font-size: 18px;
            color: black;
        }
        .login-link a {
            text-decoration: none;
            font-weight: bold;
            color: #D4AF65;
        }
        .error-msg {
            color: red;
            font-size: 16px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Create a New Account</h2>

    <!-- Error message shown here -->
    <% 
        String error = request.getParameter("error");
        if ("email".equals(error)) {
    %>
        <div class="error-msg">Email already exists!</div>
    <% } %>

    <form action="<%=request.getContextPath()%>/Registerservlet" method="POST">
        <div class="input-box">
            <input type="text" name="name" placeholder="Name" required>
        </div>
        <div class="input-box">
            <input type="tel" name="mobile" placeholder="Mobile No." pattern="[0-9]{10}" required>
        </div>
        <div class="input-box">
            <input type="email" name="email" placeholder="Email" required>
        </div>
        <div class="input-box password-container">
            <input type="password" name="password" id="password" placeholder="Password" required>
            <span class="toggle-password" onclick="togglePassword('password', this)">
                <i class="fa-solid fa-eye-slash"></i>
            </span>
        </div>
        <div class="input-box password-container">
            <input type="password" name="conf_password" id="conf_password" placeholder="Confirm Password" required>
            <span class="toggle-password" onclick="togglePassword('conf_password', this)">
                <i class="fa-solid fa-eye-slash"></i>
            </span>
        </div>
        <button type="submit">Register</button>
    </form>

    <div class="divider"></div>

    <p class="login-link">Already have an account? <a href="Login.jsp">Login</a></p>
</div>

<script>
    function togglePassword(fieldId, iconElement) {
        var passwordField = document.getElementById(fieldId);
        var icon = iconElement.querySelector("i");

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
