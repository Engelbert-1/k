<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form action="sum" method="post">
        <table>
            <tr>
                <td>Enter an integer n:</td>
                <td><input type="text" name="n" value="${requestScope.n}"></td>
            </tr>
            <tr>
                <td>Result:</td>
                <td><input type="text" name="rs" value="${requestScope.rs}" readonly></td>
            </tr>
            <tr>
                <td></td>
                <td>${requestScope.err}</td>
            </tr>
            <tr>
                <td><button type="submit">SUM</button></td>
            </tr>
        </table>
    </form>
</body>
</html>
