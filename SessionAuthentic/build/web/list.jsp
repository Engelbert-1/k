<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of Students</h1>
        <a href="authen?action=add">Add new</a>
        <br/><br/>
        <table border="1px" width="50%">
            <tr style="color: red">
                <th>ID</th>
                <th>Name</th>
                <th>DOB</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${requestScope.data}" var="c">
                <tr>
                    <td>${c.id}</td>
                    <td>${c.name}</td>
                    <td>${c.dob}</td>
                    <td>
                        <c:choose>
                                <c:when test="${c.gender == true}">
                                    <img src="images/male.png" alt="Male" width="20" height="20">
                                </c:when>
                                <c:otherwise>
                                    <img src="images/female.png" alt="Female" width="20" height="20">
                                </c:otherwise>
                            </c:choose>
                    </td>
                    <td>${c.address}</td>
                    <td>
                        <a onclick="doDelete('${c.id}')" href="#">Delete</a> &nbsp; &nbsp; &nbsp;
                        <a href="authen?action=update&id=${c.id}">Update</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <script type="text/javascript">
            function doDelete(id) {
                if (confirm('Are you sure you want to delete ID ' + id + '?')) {
                    window.location = 'authen?action=delete&id=' + id;
                }
            }
        </script>
    </body>
</html>
