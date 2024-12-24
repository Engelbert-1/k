<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome!</h1>
    <h3>Hello ${sessionScope.account.username}</h3>
    <a href="logout.jsp">Logout</a>
</body>
</html>