<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "mysql");
    PreparedStatement stmt = conn.prepareStatement("SELECT * FROM user3 WHERE email = ? AND password = ?");
    stmt.setString(1, email);
    stmt.setString(2, password);
    ResultSet result = stmt.executeQuery();
    
    if (result.next()) {
        session.setAttribute("first_name", result.getString("first_name"));
        session.setAttribute("last_name", result.getString("last_name"));
        session.setAttribute("email", email);
        response.sendRedirect("profile.jsp");
    } else { %>
    <h1>Invalid User</h1>
    <% 	request.getRequestDispatcher("login.jsp").include(request, response);
    }
%>
</body>
</html>