<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of Student</h1>
        <table border="1px" width="40%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>GENDER</th>
                <th>DOB</th>
            </tr>
            <c:forEach items="${requestScope.data}" var="s">
                <tr>
                    <td>${s.id}</td>
                    <td>${s.name}</td>
                    <td>
                        <img src="${s.gender?'images/male.png':'images/female.png'}" />
                    </td>
                    <td>${s.dob}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
