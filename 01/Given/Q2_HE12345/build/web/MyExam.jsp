<%-- 
    Document   : MyExam
    Created on : Jun 27, 2024, 8:11:04 PM
    Author     : TomTit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="count" method="post">
            <table>
                <tr>
                    <td>Enter an integer n:</td>
                    <td> <input type="text" name="n" value="${n}"></td>
                </tr>
                <tr>
                    <td>Result:</td>
                    <td><input type="text" name="result" value="${result}"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="count" value="COUNT"></td>
                    <td>${error}</td>
                </tr>
            </table>
        </form>
        <table border="1">
            <tr>
                <td>n</td>
                <td>result</td>
            </tr>
            <c:forEach items="${data}" var="o">
                <tr>
                    <td>${o.getN()}</td>
                    <td>${o.getResult()}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
