<%-- 
    Document   : home
    Created on : Sep 14, 2024, 12:32:41 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Example for JSP</h1>
        <h2 style="color: chocolate">
        <%  
            String name="Nguyen Van Duc";
            out.println("Hello "+name+"!");
            out.println("<br/>So PI:"+Math.PI);
            double r=2;
            DecimalFormat f=new DecimalFormat("##.##");
            //day la chu thich tren 1 dong
        %>
        
        <!-- day la chu thich cua html -->
        
        </h2>
<!--       <h2 style="color: blue">
            Dien tich la:<%= (Math.PI*r*r) %>
        </h2>-->

        <h1>Bai 1</h1>
        <form>
            enter radius:<input type="text" name="r"/><br/>
            <input type="submit" value="SUBMIT"/>
        </form>
        
        <%
            if(request.getParameter("r")!=null){
                String r_raw=request.getParameter("r");
                double ra;
                try{
                    ra=Double.parseDouble(r_raw);
                    double s=ra*ra*Math.PI;            
        %>
        <h2>Dien tich la:<%= f.format(s)%></h2>
        <% 
            }catch(Exception e){
                System.out.print(e);
            }
            }   
        %>
    </body>
</html>
