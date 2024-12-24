<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Student</title>
    </head>
    <body>
        <h1>Add a New Student</h1>
        <h4 style="color: red">${requestScope.error}</h4>
        <form action="add" method="post">
            Enter ID: <input type="text" name="id"/><br/>
            Enter Name: <input type="text" name="name"/><br/>
            Enter DOB: <input type="date" name="dob"/><br/>
            Enter Gender: 
            <input type="radio" name="gender" value="1"/> Male
            <input type="radio" name="gender" value="0"/> Female<br/>
            Enter Address: <input type="text" name="address"/><br/>
            <button type="submit">SUBMIT</button>
        </form>
    </body>
</html>
