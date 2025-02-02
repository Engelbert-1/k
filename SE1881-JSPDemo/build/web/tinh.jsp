<%-- 
    Document   : tinh
    Created on : Sep 17, 2024, 1:25:03 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            * {margin: auto;}
            .label, input, select, option {
                font-size: 30px;
                color: blue;
            }

            .nen {
                width: 40%;
                height: auto;
                background: bisque;
            }
        </style>
    </head>
    <body>
        <div class="nen">
        <h1 style="text-align: center;">A Simple Calculator</h1>
        <hr/>
        <form>
            <table>
            <tr>
                <td class="label">Enter operand 1:</td>
                <td><input type="text" name="num1"></td>
            </tr>
            <tr>
                <td class="label">Enter operand 2:</td>
                <td><input type="text" name="num2"></td>
            </tr>
            
            <tr>
                <td class="label">Select operation:</td>
                <td>
                    <select name="op">
                        <option value="+">+</option>
                        <option value="-">-</option>
                        <option value="x">x</option>
                        <option value=":">:</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="CALCULATE"></td>
            </tr>
            
            </table>
        </form>
        <hr/>
        <h2 class="label">          
            <jsp:useBean id="c" class="model.Math" />
            <jsp:setProperty name="c" property="*" />
            <jsp:getProperty name="c" property="num1" />
            <jsp:getProperty name="c" property="op" />
            <jsp:getProperty name="c" property="num2" />
            &nbsp;&nbsp;&nbsp;&nbsp;=>&nbsp;&nbsp;
            <jsp:getProperty name="c" property="result" />
        </h2>
        </div>
    </body>
</html>
