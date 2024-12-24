<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Train List</title>
    </head>
    <body>
        <form action="add" method="post">
            Code:  <input type="text" name="code" required/><br/>
            Name:  <input type="text" name="name" required/><br/>
            Number of carriages:  <input type="number" name="num" required/><br/>
            <input type="submit" value="ADD"/><br/>
        </form>

        <br/>
        <!-- Hiển thị bảng chỉ khi có dữ liệu trong danh sách -->
        <c:if test="${not empty data}">
            <h3>List of Trains:</h3>
            <table border="1px" width="40%">
                <tr>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Number of carriages</th>
                </tr>

                <c:forEach items="${data}" var="train">
                    <tr>
                        <td>${train.code}</td>
                        <td>${train.name}</td>
                        <td>${train.num}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>

        <!-- Hiển thị thông báo lỗi nếu có -->
        <c:if test="${not empty error}">
            <p style="color:red">${error}</p>
        </c:if>
    </body>
</html>