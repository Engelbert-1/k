<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body { font-family: Arial, sans-serif; }
        #loginForm { margin: auto; width: 300px; }
        input { width: 100%; margin: 10px 0; padding: 10px; }
    </style>
</head>
<body>
    <div id="loginForm">
        <h2>Login</h2>
        <form action="AuthenticationServlet" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
        <c:if test="${not empty error}">
            <div style="color:red;">${error}</div>
        </c:if>
    </div>
</body>
</html>