<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DUC CLOCK</title>
        <link rel="icon" href="images/logo1.png"
              type="image/x-icon" />
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
        <style>

            .responsiveFacets_sectionItemLabel:hover {
                cursor: pointer;
                background-color: rgba(28, 29, 24, 0.2);
            }

            .responsiveFacets_sectionItem:hover {
                cursor: pointer;
            }
             
        /* Set header to be fixed with higher z-index */
        .main_header {
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 10;
            background-color: #008000; /* Green background for header */
        }

        /* Add padding to the main content to prevent overlap */
        .main_content {
            padding-bottom: 80px; /* Adjust this value as needed to match header height */
        }
    

        </style>
    </head>

    <body>

        <header>
            <div class="main_header header_transparent header-mobile-m" style="background-color: #008000;">
                <div class="header_container sticky-header">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-lg-2">
                                <div class="logo">
                                    <a href="home">
                                        <a href="home" class="fxt-logo"><img src="images/logo.png" alt="Logo"></a>
                                    </a>
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
                                            <li><a href="contact">Liên hệ</a></li>
                                                <c:if test="${sessionScope.account==null}">
                                                <li>
                                                    <a href="#">Người dùng <i class="fa fa-angle-down"></i></a>
                                                    <ul class="sub_menu pages">
                                                        <li><a href="login">Đăng nhập</a></li>
                                                        <li><a href="register">Đăng xuất</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                            <c:if test="${sessionScope.account!=null}">
                                                <li>
                                                    <a href="profile">Tài khoản</a> 
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


        <!-- slider section starts  -->
        <section class="slider_section slider_section mb-66" style="margin-bottom: 0px">
            <div class="slider_area owl-carousel">
                
                
            </div>
        </section>


        <!-- product area starts -->

        <div class="product_area product_area_two mb-65">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title">
                            <h2 class=text-shadow" style="font-size: 20px;"><span>Sản Phẩm Mới 2024</span></h2>
                            <div class="product_tab_btn">
                                <ul class="nav" role="tablist">
                                    <li>
                                        <a href="home1?cid=${0}" class="${chid[0]==true?"active":""}">
                                            Tất cả
                                        </a>
                                    </li>
                                    <c:forEach items="${requestScope.category}" var="c">
                                        <li value="${c.id}" >
                                            <a href="home1?cidYear=${c.id}" class="${c.id==cidYear?"active":""}">
                                                ${c.name}
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="tab-content">
                    <div class="tab-pane fade show active" id="Men" role="tabpanel">
                        <div class="row">
                            <div  class="product_carousel product_column4 owl-carousel">
                                <c:forEach items="${requestScope.productsYear}" var="p">
                                    <div class="col-lg-3">
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img">
                                                        <img src="${p.image[0]}" alt="">
                                                    </a>
                                                    <a href="#" class="secondary_img"  height="270px">
                                                        <img src="${p.image[1]}" alt="">
                                                    </a>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="add_to_cart" 
                                                                onclick="openModal('modal_box',${p.id}, '${p.image[0]}', '${p.image[1]}',
                                                                                '${p.name}',${p.salePrice},${p.price}, '${p.describe}', '${p.classifyStr}',
                                                                                '${p.supplier.getCompanyName()}')"">
                                                                <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                    <i class="fa fa-shopping-cart"></i>
                                                                </a>
                                                            </li>
                                                           
                                                            <li class="quick_button" 
                                                                onclick="openModal('modal_box',${p.id}, '${p.image[0]}', '${p.image[1]}',
                                                                                '${p.name}',${p.salePrice},${p.price}, '${p.describe}', '${p.classifyStr}',
                                                                                '${p.supplier.getCompanyName()}')" >
                                                                <a href="#" data-toggle="modal" data-target="#modal_box" 
                                                                   title="Quick View">
                                                                    <i class="fa fa-eye"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <figcaption class="product_content">
                                                    <h4 class="product_name" style="">
                                                        <a href="#">${p.name}</a>
                                                    </h4>

                                                    <div class="price_box">
                                                       
                                                        <span class="current_price">$ ${p.salePrice}
                                                        </span>
                                                    </div>
                                                    
                                                </figcaption>
                                            </figure>
                                        </article>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="home_section_two color_two mb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12">
                        <div class="home_section_left">
                            <c:set var="cat" value="${requestScope.category}"/>
                            <div class="testimonial_style_two mb-60 rightleft">
                                <div class="testimonial_container">
                                    <div class="section_title section_title_style2">
                                        <h2 style="font-size: 20px">Các loại sản phẩm</h2>
                                    </div>
                                    <form id="f3" action="refine" method="get">
                                        <div class="" style="margin: 0">
                                            <h2 style="font-size: 16px;"></h2>
                                            <fieldset class="responsiveFacets_sectionContent " aria-hidden="false">
                                                <div href="#" class="responsiveFacets_sectionItemLabel" onclick="pageRefine(0)">
                                                    <label class="responsiveFacets_sectionItem" for="brand">
                                                        ALL (${listAll.size()})
                                                    </label>
                                                </div>
                                                <c:forEach begin="0" end="${cat.size()-1}" var="i">
                                                    <div class="responsiveFacets_sectionItemLabel" onclick="pageRefine(${i + 1})">
                                                        <label href="#" class="responsiveFacets_sectionItem" for="brand" >
                                                            ${cat.get(i).name} (${cat.get(i).getTotalProduct()})
                                                        </label>
                                                    </div>
                                                </c:forEach>
                                            </fieldset>
                                        </div>
                                        <input type="hidden" value="" name="cid_refine" id="submitt">
                                    </form>
                                </div>
                            </div>
                            <!-- testimonial section ends -->


                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="home_section_right">
                            <!-- product area starts  -->

                            <div class="product_area mb-65">
                                <div class="section_title section_title_style2">
                                    <h2>Top 5 Sản phẩm</h2>
                                </div>
                                <div class="row">
                                    <div class="product_carousel product_column3 owl-carousel">
                                        <c:forEach items="${requestScope.productsTopSellers}" var="t">
                                            <div class="col-lg-3">
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="${t.image[0]}" alt="">
                                                            </a>
                                                            <a href="#" class="secondary_img">
                                                                <img src="${t.image[1]}" alt="">
                                                            </a>

                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart"
                                                                        onclick="openModal('modal_box',${t.id}, '${t.image[0]}', '${t.image[1]}',
                                                                                        '${t.name}',${t.salePrice},${t.price}, '${t.describe}', '${t.classifyStr}',
                                                                                        '${t.supplier.getCompanyName()}')">
                                                                        <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    
                                                                    <li class="quick_button" 
                                                                        onclick="openModal('modal_box',${t.id}, '${t.image[0]}', '${t.image[1]}',
                                                                                        '${t.name}',${t.salePrice},${t.price}, '${t.describe}', '${t.classifyStr}',
                                                                                        '${t.supplier.getCompanyName()}')" >
                                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                                           title="Quick View">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name">
                                                                <a href="#">${t.name} </a>
                                                            </h4>
                                                            
                                                            <div class="price_box">                                                             
                                                                <span class="current_price">$ ${t.salePrice}</span>
                                                            </div>
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- product section ends -->
            </div>
        </div>


        <!-- home section area ends -->

        <!-- blog section ends -->

        <footer class="footer_widgets color_two">
           <div class="footer_top" style="background-color: black; padding: 50px 0; color: #ffffff;">
    <!-- Nội dung footer -->
</div>
                <div class="container">
                    <div class="row d-flex justify-content-between">
                        <div class="col-lg-4 col-md-6 col-sm-7 d-flex flex-column">
                            <div class="widgets_container contact_us">
                                <div class="footer_logo">
                                    <a href="#"><img src="images/logo.png" alt="Logo"></a>
                                </div>
                                <div class="footer_desc">
                                    <p>Trải qua rất nhiều năm hoạt động và phát triển, chuỗi cửa hàng đồng hồ DUC CLOCK trở thành đại lý ủy quyền cho rất nhiều thương hiệu đến từ Nhật Bản và Thụy Sỹ chuyên bán đồng hồ đeo tay chính hãng.</p>
                                </div>
                                <p>
                                    <span>Địa chỉ :</span> Vân Cốc 1, Vân Trung, Việt Yên, Bắc Giang
                                </p>
                                <p><span>Email :</span> <a href="#">DucNVHE186352@fpt.edu.vn</a></p>
                                <p><span>Phone :</span> <a href="tel: +91 8888884444">0999998888</a> </p>
                                
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-5 d-flex flex-column">
                            <div class="widgets_container widget_menu">
                                <h3>Thông tin</h3>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="home">Trang chủ</a></li>
                                        <li><a href="aboutus">Về chung tôi</a></li>
                                        <li><a href="refine?cid_refine=0">Cửa hàng</a></li>
                                        <li><a href="profile">Tài khoản của tôi</a></li>
                                        <li><a href="viewcart">Giỏ hàng</a></li>
                                        
                                        <li><a href="contact">Liên hệ</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <jsp:include page="footer.jsp"/>
        </footer>

        <div class="modal fade" id="modal_box" role="dialog"></div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/clickevents.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <script src="js/main.js"></script>
        <script type="text/javascript">
                                                                        function submitEmail() {
                                                                            var text = document.querySelector("#emailDiscount").value;
                                                                            $.ajax({
                                                                                url: "/Clock/email",
                                                                                type: "get",
                                                                                data: {
                                                                                    txt: text
                                                                                },
                                                                                success: function (data) {
                                                                                    var row = document.getElementById("newsletter");
                                                                                    row.innerHTML = data;
                                                                                },
                                                                                error: function (xhr) {
                                                                                }
                                                                            });
                                                                        }
        </script>
    </body>

</html>