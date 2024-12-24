<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
    <div id="wrapper">
        <h2>Register</h2>
        <form action="AuthenticationServlet" method="POST">
            <div>
                <label>Username: </label>
                <input type="text" name="username" required>
            </div>
            <div>
                <label>Password: </label>
                <input type="password" name="password" required>
            </div>
            <button type="submit" name="action" value="register">Register</button>
            <c:if test="${not empty error}">
                <p style="color: red;">${error}</p>
            </c:if>
        </form>
    </div>
</body>
</html>