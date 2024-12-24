<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="images/logo1.png"
              type="image/x-icon" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>
            DUC CLOCK
        </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.tailwindcss.com/3.3.2"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"/>
        <style type="text/css">
            .a {
                color: black;
            }
        </style>
    </head>

    <body class="stretched no-transition">
        <header>
            <div class="main_header header_transparent header-mobile-m" style="margin: 0">
                <div class="header_container sticky-header">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-lg-2">
                                <div class="logo">
                                    <a href="home"><img src="images/logo.png" alt=""></a>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <!-- main-menu starts -->
                                <div class="main_menu menu_two menu_position">
                                    <nav>
                                        <ul>
                                            <li class="mega_items">
                                                <a href="#">Sản phẩm <i class="fa fa-angle-down"></i></a>
                                                <div class="mega_menu">
                                                    <ul  class="mega_menu_inner">
                                                        <li style="color: black; font-size: 16px">

                                                            <a class="a" href="refine?cid_refine=${0}">Tất cả</a>
                                                        </li>
                                                        <c:forEach items="${requestScope.category}" var="c">
                                                            <li style=" font-size: 16px">
                                                                <a class="a" href="refine?cid_refine=${c.id}">${c.name}</a>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="aboutus" style="color:#f6692a ">Về chúng tôi</a></li>
                                            <li><a href="contact" >Liên hệ</a></li>
                                                <c:if test="${sessionScope.account==null}">
                                                <li>
                                                    <a href="#">Người dùng <i class="fa fa-angle-down"></i></a>
                                                    <ul class="sub_menu pages">
                                                        <li><a href="login">Đăng nhập</a></li>
                                                        <li><a href="register">Đăng kí</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                            <c:if test="${sessionScope.account!=null}">
                                                <li>
                                                    <a href="profile">Hồ sơ</a> 
                                                </li>
                                            </c:if>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- main menu ends -->
                            </div>
                            <div class="col-lg-4">
                                <%@ include file="header_right.jsp"%>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </header>
        <!-- #header end -->

        <!-- Content
============================================= -->
        <section id="content">

            <div class="content-wrap notoppadding nobottompadding">



                <!-- group 1 -->
                <section id="section_about" class="corner clearfix" style=" background-image: url('images/banner/banner15.png');">
                    <div class="container">
                        <h2 style="font-family: Roboto;font-size: 48px; margin-top: 50px">DUC
                            <span style="font-family: Roboto;color: #ff5722;">
                                CLOCK
                            </span>
                        </h2>
                        <h3 style="font-weight: 400;">
                            Cửa hàng phân phối đồng hộ chính hãng tại Việt Nam
                        </h3>
                        <div class="section_about_content col-md-12" style="margin-top: 30px;">
                            <div class="col-md-4" style="text-align: center;">
                                <img src="images/products/Women/20-2.png"
                                     alt="heading_image">
                            </div>
                            <div class="col-md-8">
                                <div class="section_about_content_text">
    <p><i class="fa fa-check" aria-hidden="true"></i> Cam kết chính hãng.</p>
    <p><i class="fa fa-check" aria-hidden="true"></i> Chính sách bảo hành cho tất cả các sản phẩm 10 năm.</p>
    <p><i class="fa fa-check" aria-hidden="true"></i> Giao hàng nhanh chóng, nhận hàng sau 3 ngày.</p>
</div>
                                <a class="button-click" href="refine?cid_refine=0" data-href="#section_detail">
                                    <button>CHỌN MUA NGAY </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>
                
                
                <div id="section_contact" class="page-section nobottompadding notoppadding"  style="padding: 0">
                    <div class="row noleftmargin norightmargin common-height">
                        <div class='index_map col-md-6 col-sm-6 hidden-xs nopadding'>
    <img src="https://thuthuatnhanh.com/wp-content/uploads/2021/07/hinh-anh-hinh-nen-dong-ho.jpg" alt="Hình nền đồng hồ" width="100%" height="400" style="border:0;">
</div>

                        <!-- Google Map End -->

                        <div class="col-md-6 col-sm-6" style="background-color: #383c44">
                            <div class="max-height" style='padding: 60px 30px'>
                                <h3 class="" style='color: #ffffff; font-size: 24px; '>Trụ sở</h3>

                                <div style="line-height: 1.7;">
                                    <address style="line-height: 1.7; font-size: 16px; color: #dbdbdb ;">
                                        <strong style='color: #fff'>Bắc Giang:</strong><br>
                                        Vân Cốc 1, Việt Yên<br>
                                        Nghĩa Trung, Việt Yên<br>
                                        Nếnh, Việt Yên<br>
                                        Hotline: 0999998888<br />
                                        Email: DucNVHE186352@fpt.edu.vn

                                    </address>

                                    <address style="line-height: 1.7; font-size: px; color: #ffffff ;">

                                    </address>
                                    <address style="line-height: 1.7; font-size: px; color: #ffffff ;">

                                    </address>
                                    <address style="line-height: 1.7; font-size: px; color: #ffffff ;">

                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                
            </div>
        </section>

        <!-- #content end -->
        <jsp:include page="footer.jsp"/>
    </div><!-- #wrapper end -->


    <link href="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/bootstrap.min.scss.css?1671122359380"
          rel="stylesheet" type="text/css" media="all" />
    <link href="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/style.css?1671122359380" rel="stylesheet"
          type="text/css" media="all" />
    <link rel="stylesheet" type="text/css"
          href="//hstatic.net/0/global/design/member/fonts/svn-gotham-book,sans-serif.css">

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/scripts.js?1671122359380"
    type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
    <script src="js/countdown.js"></script>
    <script src="js/clickevents.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
