<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student</title>
    </head>
    <body>
        <h1>Update Student Information</h1>
        <c:set var="c" value="${requestScope.student}"/>
        <form action="update" method="post">
            Enter ID: <input type="text" name="id" value="${c.id}" readonly/><br/>
            Enter Name: <input type="text" name="name" value="${c.name}"/><br/>
            Enter DOB: <input type="date" name="dob" value="${c.dob}"/><br/>
            Enter Gender: 
            <input type="radio" name="gender" value="1" <c:if test="${c.gender == 1}">checked</c:if>/> Male
            <input type="radio" name="gender" value="0" <c:if test="${c.gender == 0}">checked</c:if>/> Female<br/>
            Enter Address: <input type="text" name="address" value="${c.address}"/><br/>
            <button type="submit">UPDATE</button>
        </form>
    </body>
</html>
