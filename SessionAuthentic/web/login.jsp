<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
    </head>
    <body>
        <h1>Login Form</h1>
        <h3 style="color: red">${requestScope.error}</h3>
        <form action="login" method="post">
            Enter Username: <input type="text" name="user" required/><br/>
            Enter Password: <input type="password" name="pass" required/><br/>
            <button type="submit">LOGIN</button>
        </form>
    </body>
</html>
