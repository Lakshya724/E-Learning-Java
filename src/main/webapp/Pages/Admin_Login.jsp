<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        /* Animated Background */
        @keyframes gradientAnimation {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(-45deg, #ff9a9e, #fad0c4, #ffdde1, #fc6076);
            background-size: 400% 400%;
            animation: gradientAnimation 8s ease infinite;
        }

        .login-container {
            width: 50%;
            min-height: 400px;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 2px 2px 20px rgba(0, 0, 0, 0.2);
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
            position: relative;
            background: url('Images/Adminback.jpg') no-repeat center center;
            background-size: 100% 100%;
            backdrop-filter: blur(10px);
        }

        /* Up-to-Down Animation */
        @keyframes slideDown {
            from {
                transform: translateY(-100px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .login-form {
            width: 75%;
            padding: 20px;
            text-align: left;
            background: rgba(255, 255, 255, 0.6);
            border-radius: 10px;
            animation: slideDown 1s ease-in-out;
        }

        .login-form h2 {
            text-align: center;
        }

        .input-box {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.7);
        }

        .login-btn {
            width: 100%;
            padding: 10px;
            background: goldenrod;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .divider {
            width: 2px;
            height: 75%;
            background-color: rgba(0, 0, 0, 0.6);
        }

        .image-container img {
            width: 100%;
            border-radius: 10px;
            filter: blur(1px); /* Apply blur effect */
        }

        /* Error Message */
        .error {
            color: red;
            font-size: 14px;
            display: none;
        }

    </style>
    <script>
        function validateForm() {
            let email = document.getElementById("email").value;
            let password = document.getElementById("password").value;
            let emailError = document.getElementById("emailError");
            let passwordError = document.getElementById("passwordError");
            let loginError = document.getElementById("loginError");
            let valid = true;

            // Email Validation
            let emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            if (!emailPattern.test(email)) {
                emailError.style.display = "block";
                valid = false;
            } else {
                emailError.style.display = "none";
            }

            // Password Validation (Minimum 6 characters)
            if (password.length < 6) {
                passwordError.style.display = "block";
                valid = false;
            } else {
                passwordError.style.display = "none";
            }

            // Admin Credentials Validation
            if (email === "admin@gmail.com" && password === "admin123") {
                loginError.style.display = "none";
                return true;  // Allow login
            } else {
                loginError.style.display = "block";
                return false; // Prevent login
            }
        }
    </script>
</head>
<body>

    <div class="login-container">
        <!-- Left Side: Login Form -->
        <div class="login-form">
            <h2>ADMIN LOGIN</h2>
            <form action="admin_dashboard.jsp" method="post" onsubmit="return validateForm();">
                <input type="text" id="email" name="email" class="input-box" placeholder="Email" required>
                <span id="emailError" class="error">Please enter a valid email</span><br>

                <input type="password" id="password" name="password" class="input-box" placeholder="Password" required>
                <span id="passwordError" class="error">Password must be at least 6 characters</span><br>

                <span id="loginError" class="error">Invalid email or password</span><br>

                <button type="submit" class="login-btn">Login</button>
            </form>
        </div>

        <!-- Vertical Divider -->
        <div class="divider"></div>

        <!-- Right Side: Blurry Image -->
        <div class="image-container">
            <img src="Images/Adminfront.jpg" alt="Login Image">
        </div>
    </div>

</body>
</html>
