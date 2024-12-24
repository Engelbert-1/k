<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <h1>Statistics Dashboard</h1>
    <table border="1">
        <tr>
            <th>Total Products</th>
            <th>Total Price</th>
            <th>Average Price</th>
            <th>Maximum Price</th>
            <th>Minimum Price</th>
        </tr>
        <tr>
            <td>${totalProducts}</td>
            <td>${totalPrice}</td>
            <td>${avgPrice}</td>
            <td>${maxPrice}</td>
            <td>${minPrice}</td>
        </tr>
    </table>
</body>
</html>