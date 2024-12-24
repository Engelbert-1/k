<%@include file="header.jsp" %>
<title>JSP Page</title>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div style="display: flex;">
    <%@include file="tableleft.jsp" %>

    <div style="width: 80%; padding: 20px;">
        <h1>LIST OF EMPLOYEES</h1>
        <div style="display: flex; flex-wrap: wrap; justify-content: space-between;">
            <div style="width: 30%; border: 1px solid gray; border-radius: 10px; margin-bottom: 20px; text-align: center; padding: 10px;">
                <img src="images/img1.png" alt="Image 1" style="width: 100px; height: 100px; border-radius: 50%;">
                <h2>Image 1</h2>
                <p>Chàng trai đẹp đẽ, với thần thái rạng rỡ!</p>
                <button>Detail</button>
            </div>
            <div style="width: 30%; border: 1px solid gray; border-radius: 10px; margin-bottom: 20px; text-align: center; padding: 10px;">
                <img src="images/img2.png" alt="Image 2" style="width: 100px; height: 100px; border-radius: 50%;">
                <h2>Image 2</h2>
                <p>Cô gái xinh xắn dễ thương nhất quả đất!</p>
                <button>Detail</button>
            </div>
            <div style="width: 30%; border: 1px solid gray; border-radius: 10px; margin-bottom: 20px; text-align: center; padding: 10px;">
                <img src="images/img3.png" alt="Image 3" style="width: 100px; height: 100px; border-radius: 50%;">
                <h2>Image 3</h2>
                <p>Chàng trai đẹp đẽ, với nụ cười tỏa nắng!</p>
                <button>Detail</button>
            </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>
