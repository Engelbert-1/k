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
<form action="search" method="get">
    ID: <input type="text" name="id"><br>
    Name: <input type="text" name="name"><br>
    DOB: <input type="text" name="dob" placeholder="YYYY-MM-DD"><br>
    Gender: 
    <select name="gender">
        <option value="">-----ALL-----</option>
        <option value="true">Male</option>
        <option value="false">Female</option>
    </select><br>
    Department:
    <select name="did">
        <option value="0">-----ALL-----</option>
        <c:forEach items="${depts}" var="d">
            <option value="${d.id}">${d.name}</option>
        </c:forEach>
    </select><br>
    <input type="submit" value="SEARCH">
</form>
<hr>

<!-- Display Results -->
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
            <td>${e.gender ? 'Male' : 'Female'}</td>
            <td>${e.department.name}</td>
        </tr>
    </c:forEach>
</table>

    </body>
</html>
