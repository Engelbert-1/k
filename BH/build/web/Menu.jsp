<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark" style="background-color: #141F48;">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center" href="home">
            <img src="images/Screenshot 2024-10-25 213222.png" alt="Logo" width="120" height="50" class="mr-2">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            
            <form action="search" method="post" class="form-inline my-2 my-lg-0 mx-auto">
                <div class="input-group input-group-sm">
                    <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Tìm kiếm...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
<a class="btn btn-success btn-sm ml-3" href="Cart.jsp">
    <i class="fa fa-shopping-cart"></i>
</a>
            </form>
                    
                    
                                       
            <ul class="navbar-nav ml-auto">
                <style>
    .manager-container {
        border: 2px solid gray; /* Đường viền màu xanh */
        margin-top: 5px; /* Khoảng cách bên trên */
        border-radius: 5px; /* Bo tròn góc */
    }
</style>

<c:if test="${sessionScope.acc.isSell == 1}">
    <li class="nav-item manager-container">
        <a class="nav-link" href="manager">QL Sản Phẩm</a>
    </li>
</c:if>
                    
                <c:if test="${sessionScope.acc != null}">
    <li class="nav-item">
        <a class="nav-link" href="" style="margin-top: 5px; display: flex; align-items: center;">
    <img src="https://e7.pngegg.com/pngimages/518/320/png-clipart-computer-icons-mobile-app-development-android-my-account-icon-blue-text.png" 
         alt="Account Icon" 
         style="height: 33px; margin-right: 5px; margin-left: 5px;">
    
</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="logout">
            <img src="images/Screenshot 2024-10-24 150120.png" alt="Logout Icon" style="width: 35px; height: 35px; margin-top: 4px"/>
        </a>
    </li>
</c:if>
                    
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">
                            <img src="https://png.pngtree.com/png-clipart/20230923/original/pngtree-login-pixel-perfect-gradient-linear-ui-icon-symbol-app-line-vector-png-image_12836419.png" alt="Login Image" style="width: 35px; height: 35px;"/>
                        </a>
                    </li>
                </c:if>               
            </ul>
        </div>
    </div>
</nav>
                      
<section class="jumbotron text-center rainbow-background">
    <div class="container">
        <h1 class="jumbotron-heading" >KANSAI PAINT</h1>
<p class="lead mb-0" style="color: white;">
    THƯƠNG HIỆU SƠN HƠN 100 NĂM ĐẾN TỪ 
    <span style="display: inline-flex; align-items: center;">
        NHẬT BẢN 
        <img src="https://tse3.mm.bing.net/th?id=OIP.VMJrpP9KpNsAVCbyractbwHaE8&pid=Api&P=0&h=180" 
             alt="Flag of Japan" 
             style="height: 20px; margin-left: 5px;">
    </span>
</p>
        
        <!-- Thêm video vào đây -->
        <video width="100%" loop autoplay muted>
    <source src="images/Screen Recording 2024-10-22 135259.mp4" type="video/mp4">
    Your browser does not support the <code>video</code> tag.
</video>
    </div>
</section>

<style>
    .rainbow-background {
        background-image: url('https://img4.thuthuatphanmem.vn/uploads/2020/12/26/hinh-nen-nui-phu-si-nhat-ban_125916095.jpg');
        background-size: cover; /* Đảm bảo hình ảnh phủ kín phần tử */
        background-position: center; /* Căn giữa hình ảnh */
        padding: 50px 0; /* Giữ khoảng cách dọc cho phần jumbotron */
        text-shadow: 2px 2px 4px rgba(0,0,0,0.6); /* Thêm bóng chữ để dễ đọc hơn */
        color: #004A8C; /* Thay đổi màu chữ thành #004A8C cho toàn bộ văn bản trong container */
    }

    .lead {
        margin-bottom: 0; /* Đảm bảo khoảng cách dưới đoạn văn không bị ảnh hưởng */
    }
</style>


<div class="image-gallery">
    <div class="image-container">
        <img src="images/Screenshot 2024-10-25 225720.png" alt="Image 1" class="image-item" onclick="openLightbox(); currentSlide(1)" />
        <img src="images/Screenshot 2024-10-25 225749.png" alt="Image 2" class="image-item" onclick="openLightbox(); currentSlide(2)" />
        <img src="images/Screenshot 2024-10-25 232118.png" alt="Image 3" class="image-item" onclick="openLightbox(); currentSlide(3)" />
        <img src="images/Screenshot 2024-10-25 225836.png" alt="Image 4" class="image-item" onclick="openLightbox(); currentSlide(4)" />
        <img src="images/Screenshot 2024-10-25 225853.png" alt="Image 5" class="image-item" onclick="openLightbox(); currentSlide(5)" />
        <img src="images/Screenshot 2024-10-25 231553.png" alt="Image 6" class="image-item" onclick="openLightbox(); currentSlide(6)" />
    </div>
</div>

<!-- Lightbox Modal -->
<div id="lightbox" class="lightbox">
    <span class="close" onclick="closeLightbox()">&times;</span>
    <div class="lightbox-content">
        <div class="slides">
            <div class="slide">
                <img src="images/Screenshot 2024-10-25 225720.png" alt="Image 1" />
            </div>
            <div class="slide">
                <img src="images/Screenshot 2024-10-25 225749.png" alt="Image 2" />
            </div>
            <div class="slide">
                <img src="images/Screenshot 2024-10-25 232118.png" alt="Image 3" />
            </div>
            <div class="slide">
                <img src="images/Screenshot 2024-10-25 225836.png" alt="Image 4" />
            </div>
            <div class="slide">
                <img src="images/Screenshot 2024-10-25 225853.png" alt="Image 5" />
            </div>
            <div class="slide">
                <img src="images/Screenshot 2024-10-25 231553.png" alt="Image 6" />
            </div>          
        </div>
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
</div>

<style>
    .image-gallery {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }
    
    .image-container {
        margin: 10px;
    }
    
    .image-item {
        width: 200px; /* Điều chỉnh kích thước hình ảnh */
        height: auto;
        cursor: pointer;
        transition: transform 0.2s;
    }
    
    .image-item:hover {
        transform: scale(1.05);
    }
    
    .lightbox {
        display: none; /* Ẩn modal */
        position: fixed;
        z-index: 1000;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.8);
    }

    .lightbox-content {
        position: relative;
        margin: auto;
        padding: 0;
        width: 80%;
        max-width: 700px;
    }

    .slide {
        display: none; /* Ẩn tất cả slides */
    }

    .slide img {
        width: 100%;
        height: auto;
    }

    .close {
        color: white;
        position: absolute;
        top: 10px;
        right: 25px;
        font-size: 35px;
        font-weight: bold;
        cursor: pointer;
    }

    .prev, .next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        width: auto;
        padding: 16px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
        user-select: none;
    }

    .next {
        right: 0;
        border-radius: 3px 0 0 3px;
    }
</style>

<script>
    let slideIndex = 1;

    function openLightbox() {
        document.getElementById("lightbox").style.display = "block";
    }

    function closeLightbox() {
        document.getElementById("lightbox").style.display = "none";
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function showSlides(n) {
        let i;
        const slides = document.getElementsByClassName("slide");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slides[slideIndex - 1].style.display = "block"; // Hiện slide hiện tại
    }
</script>

<!--end of menu-->
