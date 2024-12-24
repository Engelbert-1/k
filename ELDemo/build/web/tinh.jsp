<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>VD cho Java bean</h1>
        <form>
            Nhap so 1:<input type="number" name="n1" value="${param.n1}"/><br/>
            Nhap so 2:<input type="number" name="n2" value="${param.n2}"/><br/>
            Nhap so 3:<input type="number" name="n3" value="${param.n3}"/><br/>
            <input type="submit" value="tinh toan"/>
        </form>
        <h2>Tong: ${(param.n1+param.n2+param.n3)}</h2>
        <h2>Trung binh: ${(param.n1+param.n2+param.n3)/3}</h2>
        <h2>Dien tich duong tron n1: ${(param.n1*param.n1*Math.PI)}</h2>
        
        <h4>Du lieu lay tu server
            <br/>
            Hello ${requestScope.name}
        </h4>
        
        <h2 style="color: chocolate">Thong tin: ${requestScope.st}
            
        </h2>

<!--        <jsp:useBean id="t" class="model.BaSo" />
        <jsp:setProperty name="t" property="*" />

        <h2>Tổng: <jsp:getProperty name="t" property="tong" /></h2>
        <h2>Trung bình: <jsp:getProperty name="t" property="trungbinh" /></h2>-->
        
    </body>
</html>
