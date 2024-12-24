<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Supplier List</title>
</head>
<body>
    <h1>Supplier Filter</h1>
    <form action="show" method="post">
        <label>Supplier name:</label>
        <input type="text" name="name"/>
        <button type="submit" name="action" value="filterByName">Filter by name</button>
    </form>
    <form action="show" method="post">
        <label>Year of birth:</label>
        <input type="number" name="year"/>
        <button type="submit" name="action" value="filterByYear">Filter by year</button>
    </form>
    
    <h2>List of Suppliers:</h2>
    <table border="1">
        <tr>
            <th>Code</th>
            <th>Name</th>
            <th>Date of birth</th>
            <th>Gender</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        <c:forEach var="supplier" items="${suppliers}">
            <tr>
                <td>${supplier.code}</td>
                <td>${supplier.name}</td>
                <td>${supplier.dob}</td>
                <td>${supplier.gender}</td>
                <td>${supplier.address}</td>
                <td>
                    <form action="show" method="post" style="display:inline;">
                        <input type="hidden" name="code" value="${supplier.code}"/>
                        <button type="submit" name="action" value="delete">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>