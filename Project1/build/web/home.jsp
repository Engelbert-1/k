<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.RoomType" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <header>
        <h1>Room Management System</h1>
        <nav>
            <a href="logout">Logout</a>
        </nav>
    </header>

    <h2>Room Types</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<RoomType> roomTypes = (List<RoomType>) request.getAttribute("roomTypes");
                for (RoomType roomType : roomTypes) {
            %>
                <tr>
                    <td><%= roomType.getId() %></td>
                    <td><%= roomType.getName() %></td>
                    <td><%= roomType.getPrice() %></td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <h3>Add Room Type</h3>
    <form action="roomType" method="post">
        <label for="name">Room Name:</label>
        <input type="text" name="name" required><br>
        <label for="price">Price:</label>
        <input type="number" step="0.01" name="price" required><br>
        <input type="submit" value="Add Room Type">
    </form>

    <footer>
        <p>&copy; 2024 Room Management System</p>
    </footer>
</body>
</html>