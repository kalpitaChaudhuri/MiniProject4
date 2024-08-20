<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <style>
        body {
            font-family: 'Comic Sans MS', cursive, sans-serif;
            background-image: url("https://img.etimg.com/thumb/msid-90569544,width-640,height-480,imgsize-342566,resizemode-4/cherry-blossoms-are-in-bloom.jpg");
            background-size: cover;
            background-repeat: no-repeat; 
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
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
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 2px solid #ff6f91;
            border-radius: 10px;
            box-sizing: border-box;
            font-size: 14px;
            background-color: #ffe6f0;
            outline: none;
            color: #333;
        }
        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus {
            border-color: #ff9fba;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #ff6f91;
            color: white;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #ff9fba;
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
        <h2 align="center">Register</h2>
        <form  action="registerProcess.jsp" method="post">
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="first_name" placeholder="Your First Name" required>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="last_name" placeholder="Your Last Name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Your Email" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="Create a Password" required>
            </div>
            <input type="submit" value="Register">
        </form>
        <div class="footer-text">
            <p>Already have an account? <a href="login.jsp" style="color: #ff6f91;">Login here</a></p>
        </div>
    </div>
</body>
</html>
