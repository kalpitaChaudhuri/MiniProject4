<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
    <style>
        body {
            font-family: 'Comic Sans MS', cursive, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #ffe6f0;
            color: #333;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        h1 {
            color: #ff6f91;
            margin-bottom: 20px;
        }
        p {
            margin: 20px 0;
        }
        a {
            color: #ff6f91;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Logout Successful!!</h1>
        <p>You have been successfully logged out.</p>
        <p><a href="login.jsp">Go to Login Page</a></p>
    </div>
    <%
        session.invalidate();
    %>
</body>
</html>