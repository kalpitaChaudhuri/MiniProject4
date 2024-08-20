<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        body {
            font-family: 'Comic Sans MS', cursive, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url("https://img.freepik.com/premium-photo/close-up-pink-flower-with-word-sprinkle-it_935395-55450.jpg");
            background-size: cover;
            background-repeat: no-repeat; 
            background-position: center;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            justify-content: center;
        }
        table {
            background-color: #ffffff; 
            border-collapse: collapse;
            width: 60%;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            margin-bottom: 20px;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #ff6f91; 
            color: #ffffff;
        }
        tr:nth-child(even) {
            background-color: #ffe6f0; 
        }
        tr:nth-child(odd) {
            background-color: #ffffff;
        }
        caption {
            font-size: 20px;
            margin: 10px;
            color: #ff6f91; 
        }
        .logout-btn {
            background-color: #ff6f91; 
            color: white;
            border: none;
            border-radius: 20px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-decoration: none; 
            display: inline-block;
            margin-top: 20px;
        }
        .logout-btn:hover {
            background-color: #ff9fba; 
        }
    </style>
</head>
<body>
<%
    String fname = (String) session.getAttribute("first_name");
	String lname = (String) session.getAttribute("last_name");
    String email = (String) session.getAttribute("email");
%>
    <table>
        <caption><b>User Profile</b></caption>
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>First Name</td>
            <td><%= fname %></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><%= lname %></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><%= email %></td>
        </tr>
    </table>
    <a href="logout.jsp" class="logout-btn">Logout</a>
</body>
</html>
