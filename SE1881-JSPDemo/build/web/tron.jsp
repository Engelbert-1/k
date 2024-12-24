<%-- 
    Document   : tron
    Created on : Sep 14, 2024, 1:10:50 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bai 1</h1>
        <form action="tinh" method="post">
            enter radius:<input type="text" name="r"/><br/>
            <input type="submit" value="SUBMIT"/>
        </form>

        <%
            if(request.getAttribute("dt")!=null){
                String s=(String)request.getAttribute("dt");
        %>
        <h2>Dien tich:<%= s%></h2>
        <%
            }
        %>
    </body>
</html>
