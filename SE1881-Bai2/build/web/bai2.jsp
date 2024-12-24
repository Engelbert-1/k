<%-- 
    Document   : bai2
    Created on : Sep 17, 2024, 10:12:59 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HE186352</h3>
        <form action="bai2" method="post">
            Get first <input type="text" name="radius"/> letters <br/>
            <button type ="submit">GET</button>
        </form>
        <h2 style = 'color: darkcyan'>
            ${requestScope.mm}
        </h2>
    </body>
</html>
