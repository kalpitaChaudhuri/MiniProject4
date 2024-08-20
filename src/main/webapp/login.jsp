<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Comic Sans MS', cursive, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #ffebf3;
        }
        .container {
            background-color: #ffe6f0; 
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            width: 320px;
        }
        h2 {
            color: #ff6f91; 
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-size: 14px;
            color: #ff6f91;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 2px solid #ff6f91;
            border-radius: 10px;
            box-sizing: border-box;
            font-size: 14px;
            background-color: #ffffff;
            outline: none;
            color: #333;
        }
        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #ff9fba;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #ff9fba;
            color: white;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #ff6f91;
        }
        .footer-text {
            margin-top: 20px;
            font-size: 12px;
            color: #aaa;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 align="center">Login</h2>
        <form action="loginProcess.jsp" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <input type="submit" value="Login">
        </form>
        <div class="footer-text">
            <p>Don't have an account? <a href="register.jsp" style="color: #1ABC9C;">Register here</a></p>
        </div>
    </div>
</body>
</html>
