<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8" />
        <meta name="theme-color" content="#f02b2b" />
        <link rel="canonical" href="images/logo1.png" />
        <meta name='revisit-after' content='2 days' />
        <meta name="robots" content="noodp,index,follow" />
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="description" content="Trang nội dung">
        <title>DUC CLOCK</title>

        <link rel="icon" href="images/logo1.png"
              type="image/x-icon" />
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/font-roboto.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/main.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/index.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/bootstrap-4-3-min.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/responsive.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/quickviews_popup_cart.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/cartpage.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/blog_article_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/sidebar_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/product_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/contact_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/account_oder_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/collection_style.scss.css?1676259868191">
        <link rel="stylesheet"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/bootstrap-4-3-min.css?1676259868191">
        <link href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/font-roboto.scss.css?1676259868191"
              rel="stylesheet" type="text/css" media="all" />
        <link href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/main.scss.css?1676259868191" rel="stylesheet"
              type="text/css" media="all" />






        <link href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/contact_style.scss.css?1676259868191"
              rel="stylesheet" type="text/css" media="all" />


        <link rel="preload" as="script"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/jquery.min.js?1676259868191" />
        <script src="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/jquery.min.js?1676259868191"
        type="text/javascript"></script>


        <link rel="preload" as="script"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/swiper.min.js?1676259868191" />
        <script src="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/swiper.min.js?1676259868191"
        type="text/javascript"></script>
    </head>

    <body style="height: auto">
        <div class="page-body">
            <header>
                <div class="main_header header_transparent header-mobile-m">
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
                                                        <ul class="mega_menu_inner">
                                                            <li style="color: black; font-size: 16px">

                                                                <a href="refine?cid_refine=${0}">Tất cả</a>
                                                            </li>
                                                            <c:forEach items="${requestScope.category}" var="c">
                                                                <li style="color: black; font-size: 16px">
                                                                    <a href="refine?cid_refine=${c.id}">${c.name}</a>
                                                                </li>
                                                            </c:forEach>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li><a href="aboutus">Về chúng tôi</a></li>
                                                <li><a href="contact" style="color:#f6692a ">Liên hệ</a></li>
                                                    <c:if test="${sessionScope.account==null}">
                                                    <li>
                                                        <a href="#">User <i class="fa fa-angle-down"></i></a>
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
            <div id="menu-overlay" class=""></div>
            <div class="breadcrumb_background" style=" background-image: url('images/banner/banner11.png');">
                <div class="title_full">
                    <div class="container">
                        <h1 class="title_page">Liên hệ</h1>
                    </div>
                </div>

            </div>
            <div class="page_contact">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="left_contact">
                                <div id="pagelogin" >
                                    <form   accept-charset="UTF-8"><input
                                            name="FormType" type="hidden" value="contact" /><input name="utf8" type="hidden"
                                            value="true" /><input type="hidden" id="Token-a800b26a361b41a1ae87368c7335bdbe"
                                            name="Token" />
                                        <script
                                        src="https://www.google.com/recaptcha/api.js?render=6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK"></script>
                                        <script>grecaptcha.ready(function () {
                                                grecaptcha.execute("6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK", {action: "contact"}).then(function (token) {
                                                    document.getElementById("Token-a800b26a361b41a1ae87368c7335bdbe").value = token
                                                });
                                            });</script>


                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="right_contact">
                                <div class="single_contact">
                                    <div class="contact-icon">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                    <div class="content-contact">
                                        <a href="tel:19006750">0999998888</a>
                                    </div>
                                </div>
                                <div class="single_contact">
                                    <div class="contact-icon">
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                    <div class="content-contact">
                                        <a href="mailto:support@sapo.vn">DucNVHE186352@fpt.edu.vn</a>
                                    </div>
                                </div>
                                <div class="single_contact">
                                    <div class="contact-icon">
                                        <i class="fa fa-map-marker-alt"></i>
                                    </div>
                                    <div class="content-contact">
                                        <span>
                                            Vân Cốc 1, Vân Trung, Việt Yên, Bắc Giang<br>

                                        </span>
                                    </div>
                                </div>

                                <div class="iFrameMap">
                                    <div id="contact_map" class="map">
                                        <iframe
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3739.462386221601!2d106.0874904!3d21.2297337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31350d3e73e95c69%3A0xd6d3b04be5e35d49!2zVsWpbiBUcnVuZywgVmnhu4d0IEdpYW5nLCBC4bqvYyBHaWFuZw!5e0!3m2!1sen!2s!4v1703229023591!5m2!1sen!2s"
                                            width="600" height="450" style="border:0" allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function submitForm() {
                var fullName = document.getElementById('fullNameContact').value;
                var email = document.getElementById('emailContact').value;
                var cmt = document.getElementById('commentContact').value;
                $.ajax({
                    url: "/Clock/contact",
                    type: "post",
                    data: {
                        name: fullName,
                        email: email,
                        cmt: cmt
                    },
                    success: function (data) {
                        var row = document.getElementById("contact");
                        row.innerHTML = data;
                    },
                    error: function (xhr) {
                    }
                });
            }
        </script>
    </body>
    <jsp:include page="footer.jsp"/>
</html>
