<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
    String fname = request.getParameter("first_name");
	String lname = request.getParameter("last_name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "mysql");
    PreparedStatement ps = conn.prepareStatement("INSERT INTO user3 VALUES (?, ?, ?, ?)");
    ps.setString(1, fname);
    ps.setString(2, lname);
    ps.setString(3, email);
    ps.setString(4, password);
    ps.executeUpdate();
    
    response.sendRedirect("login.jsp");
%>
</body>
</html>