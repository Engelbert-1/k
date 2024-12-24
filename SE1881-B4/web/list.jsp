<%@include file="header.jsp" %>
<title>JSP Page</title>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="display: flex;">
    <%@include file="tableleft.jsp" %>

    <div style="width: 80%; padding: 20px;">
        <h1>LIST OF EMPLOYEES</h1>
        <table border="1" style="width: 100%;">
            <thead>
                <tr>
                    <th>CODE</th>
                    <th>FULLNAME</th>
                    <th>AGE</th>
                    <th>IMAGE</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>HE344</td>
                    <td>Toãn An</td>
                    <td>20</td>
                    <td><img src="images/img1.png" alt="Image 1" style="width: 50px; height: 50px;"></td>                   
                    <td>
                        <button style="background-color: red; color: white;">Delete</button>
                        <button style="background-color: green; color: white;">Update</button>
                    </td>
                </tr>
                <tr>
                    <td>HE344</td>
                    <td>Toãn An</td>
                    <td>20</td>
                    <td><img src="images/img2.png" alt="Image 2" style="width: 50px; height: 50px;"></td>
                    <td>
                        <button style="background-color: red; color: white;">Delete</button>
                        <button style="background-color: green; color: white;">Update</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<%@include file="footer.jsp" %>