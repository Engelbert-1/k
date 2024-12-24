<%-- 
    Document   : search
    Created on : Oct 10, 2024, 1:58:03 PM
    Author     : tphon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of Employee</h1>
        <form action="search" >
        Department
        <select name="did" onchange="this.form.submit()">
            <option value="0">-----ALL-----</option>
            <c:forEach items="${requestScope.depts}" var="d">
                <option value="${d.id}">${d.name}</option>
            </c:forEach>
        </select>
        </form>
        <hr><!-- comment -->
        <table border="1px">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>DOB</th>
                <th>Gender</th>
                <th>Department</th>
            </tr>
                <c:forEach items="${requestScope.emps}" var="e">
                <tr>
                    <td>${e.id}</td>
                    <td>${e.name}</td>
                    <td>${e.dob}</td>
                    <td>${e.gender}</td>
                    <td>${e.department.name}</td>
                </c:forEach>
            </tr>
        </table>
        
    </body>
</html>