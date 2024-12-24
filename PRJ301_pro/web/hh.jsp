
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="dao" class="dao.DAO"/>
        <c:forEach items="${dao.allCategory}" var="c">
            ${c.cid} - ${c.cname}<br/>
        </c:forEach>
    </body>
</html>
