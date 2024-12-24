<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Calculate Tax</title>
</head>
<body>

<form method="post">
    Enter a salary:
    <input type="text" name="salary"/><br/>
    <input type="submit" value="Calculate tax"/>
</form>

<!-- Lấy giá trị salary từ request -->
<c:set var="salary" scope="request" value="${param.salary}" />

<!-- Kiểm tra nếu salary có dữ liệu và là số -->
<%--<c:choose>
    <c:when test="${not empty salary && salary.matches('[0-9]+')}">
        <c:set var="salaryValue" value="${salary}" />
        <!-- Tính thuế dựa trên mức lương -->
        <c:choose>
            <c:when test="${salaryValue < 200}">
                <h3 style="color: blue">Tax: ${0}</h3>
            </c:when>
            <c:when test="${salaryValue >= 200 && salaryValue < 400}">
                <h3 style="color: blue">Tax: ${(salaryValue - 200) * 0.1}</h3>
            </c:when>
            <c:when test="${salaryValue >= 400}">
                <h3 style="color: blue">Tax: ${(200 * 0.1) + ((salaryValue - 400) * 0.15)}</h3>
            </c:when>
        </c:choose>
    </c:when>
    <c:otherwise>
        <h3 style="color: red">Please enter a valid salary.</h3>
    </c:otherwise>
</c:choose>--%>

<form method="post">
Enter a salary:
<input type="text" name="salary"/><br/>
<c:set var="salary" scope="request" value="${param.salary}"/>
<c:if test="${salary<200}">
<h3 style="color: blue">Tax: ${0}</h3>
</c:if>
<c:if test="${(salary>=200)&&(salary<400)}">
<h3 style="color: blue">Tax: ${(salary-200)*0.1}</h3>
</c:if>
<c:if test="${salary>=400}">
<h3 style="color: blue">Tax: ${(200*0.1)+((salary-400)*0.15)}</h3>
</c:if>
<input type="submit" value="Calculate tax"/>
</form>

</body>
</html>