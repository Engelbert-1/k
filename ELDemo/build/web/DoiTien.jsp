<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function choice(change){
                document.getElementById("d").value = change;
                document.getElementById("f1").submit();
            }
        </script>
    </head>
    <body>
        <h1>Doi tien</h1>
        <h3 style="color: red">${requestScope.error}</h3>
        <form id="f1" action="doitien" method="post">
            nhap tien Viet:<input type="text" name="money"/><br/> 
<!--            <input type="radio" name="change" checked value="0"/> Sang USD
            <input type="radio" name="change" value="1"/> Sang Yen-->
<!--            <input type="checkbox" name="change" value="0"/> Sang USD
            <input type="checkbox" name="change" value="1"/> Sang Yen-->
            <br/> 
            <input type="hidden" id="d" name="change" value=""/>
            <input type="button" onclick="choice('0')" value="Doi sang USD"/>
            <input type="button" onclick="choice('1')" value="Doi sang YEN"/>
        </form>
        <h2 style="color: blue">${requestScope.kqua}</h2>
    </body>
</html>
