<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KANSAI</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
<!--        <div class="container text-center my-4" style="background-image: url('https://img6.thuthuatphanmem.vn/uploads/2022/03/03/background-mau-loang-doc-dao_092448013.jpg'); background-size: cover; background-position: center; padding: 20px; border-radius: 10px; border: 2px solid #2CBFFF;">
    <div class="blog-wrap-des">
        <h2 class="mb-3" style="color: #002666;">HỆ THỐNG SẢN PHẨM KANSAI PAINT</h2>
        <p style="color: black; max-width: 900px; margin: 0 auto;">
            Trong suốt hơn 100 năm ra đời và phát triển, Tập đoàn Kansai Paint đã tạo ra các dòng sơn chất lượng ưu việt, chinh phục thị trường trong nước lẫn quốc tế, có mặt tại 5 châu lục với hơn 70 quốc gia và vùng lãnh thổ…
        </p>
    </div>
     Hàng 1 với 3 mục đầu 
    <div class="nav-blog row gx-0 justify-content-center">
        <div class="col-4 mb-0">
            <div class="item" style="background-color: #3cbfff; padding: 20px; border-radius: 5px;">
                <a href="https://kansaipaint.com.vn/danh-muc-san-pham/son-noi-that/" class="text-decoration-none text-dark">
                    <div class="icon mb-2">
                        <img src="https://kansaipaint.com.vn/wp-content/uploads/2024/01/tax_product_icon1.png" alt="icon_b1" class="img-fluid">
                    </div>
                    <p class="titles" style="color:white;">SƠN NỘI THẤT</p>
                </a>
            </div>
        </div>
        <div class="col-4 mb-0">
            <div class="item" style="background-color: #1ca2f5; padding: 20px; border-radius: 5px;">
                <a href="https://kansaipaint.com.vn/danh-muc-san-pham/son-ngoai-that/" class="text-decoration-none text-dark">
                    <div class="icon mb-2">
                        <img src="https://kansaipaint.com.vn/wp-content/uploads/2024/01/tax_product_icon2.png" alt="icon_b2" class="img-fluid">
                    </div>
                    <p class="titles" style="color:white;">SƠN NGOẠI THẤT</p>
                </a>
            </div>
        </div>
        <div class="col-4 mb-0">
            <div class="item" style="background-color: #0084d6; padding: 20px; border-radius: 5px;">
                <a href="https://kansaipaint.com.vn/danh-muc-san-pham/son-chong-tham/" class="text-decoration-none text-dark">
                    <div class="icon mb-2">
                        <img src="https://kansaipaint.com.vn/wp-content/uploads/2024/01/tax_product_icon3.png" alt="icon_b3" class="img-fluid">
                    </div>
                    <p class="titles" style="color:white;">SƠN CHỐNG THẤM</p>
                </a>
            </div>
        </div>
    </div>
     Hàng 2 với 2 mục, căn giữa 
    <div class="nav-blog row gx-0 justify-content-center mt-3">
        <div class="col-4 mb-0">
            <div class="item" style="background-color: #005c96; padding: 20px; border-radius: 5px;">
                <a href="https://kansaipaint.com.vn/danh-muc-san-pham/bot-trets/" class="text-decoration-none text-dark">
                    <div class="icon mb-2">
                        <img src="https://kansaipaint.com.vn/wp-content/uploads/2024/01/tax_product_icon4.png" alt="icon_b4" class="img-fluid">
                    </div>
                    <p class="titles" style="color:white;">BỘT TRÉT</p>
                </a>
            </div>
        </div>
        <div class="col-4 mb-0">
            <div class="item" style="background-color: #024a76; padding: 20px; border-radius: 5px;">
                <a href="https://kansaipaint.com.vn/danh-muc-san-pham/son-du-an/" class="text-decoration-none text-dark">
                    <div class="icon mb-2">
                        <img src="https://kansaipaint.com.vn/wp-content/uploads/2024/01/tax_product_icon5.png" alt="icon_b5" class="img-fluid">
                    </div>
                    <p class="titles" style="color:white;">SƠN DỰ ÁN</p>
                </a>
            </div>
        </div>
    </div>
</div>-->

<style>
    body {
        background-image: url('https://nipponpaint.com.vn/sites/default/files/inline-images/nen-nha-mau-vang-nen-son-tuong-mau-gi-1.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
</style>

        <jsp:include page="Menu.jsp"></jsp:include> 
            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>

                    <div class="col-sm-9">
                        <div class="row">
                        <c:forEach items= "${requestScope.listP}" var="o">
                            <div class="col-4 col-md-6 col-lg-4 mb-4">
                                <div class="card">
                                    <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.title}
                                        </p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block"><span class="currency">$</span> ${o.price}</p>
                                            </div>
                                            <div class="col">
                                                <a href="" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

<!--                <div class="pagination my-4">
                    <c:if test="${currentPage > 1}">
                        <a href="home?page=${currentPage - 1}" class="btn btn-primary">Previous</a>
                    </c:if>

                    <c:forEach begin="1" end="${totalPages}" var="i">
                        <a href="home?page=${i}" 
                           class="btn ${i == currentPage ? 'btn-success' : 'btn-secondary'}">${i}</a>
                    </c:forEach>

                    <c:if test="${currentPage < totalPages}">
                        <a href="home?page=${currentPage + 1}" class="btn btn-primary">Next</a>
                    </c:if>
                </div>-->
                
            </div>
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>


             
            
