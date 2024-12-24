<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Color Trend Slider</title>
    <!-- Thêm liên kết đến Swiper CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <style>
        body {
            display: flex;
            justify-content: center; /* Căn giữa theo chiều ngang */
            align-items: center; /* Căn giữa theo chiều dọc */
            height: 100vh; /* Chiều cao 100% của viewport */
            margin: 0; /* Bỏ margin mặc định */
            background-color: #f8f8f8; /* Màu nền để dễ nhìn hơn */
        }

        .sha-more {
            text-align: center; /* Căn giữa tiêu đề */
            width: 100%; /* Đảm bảo sử dụng toàn bộ chiều rộng */
        }

        .swiper-container {
            width: 100%; /* Đặt chiều rộng của slider là 100% */
            height: 100%; /* Đặt chiều cao chiếm toàn bộ chiều cao màn hình */
        }

        .swiper-slide {
            display: flex;
            justify-content: center;
            align-items: center; /* Căn giữa theo chiều dọc */
        }

        .item img {
            width: 100%; /* Đảm bảo ảnh lấp đầy toàn bộ slide */
            height: auto; /* Giữ tỷ lệ khung hình của ảnh */
            object-fit: cover; /* Đảm bảo ảnh không bị méo */
        }

        /* Tùy chỉnh nút điều khiển */
        .swiper-button-next,
        .swiper-button-prev {
            color: #fff; /* Màu nút điều khiển */
            font-size: 24px; /* Kích thước nút điều khiển */
        }
    </style>
</head>
<body>

<div class="sha-more">
    <div class="container">
        <div class="more-items">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="item">
                            <img src="https://kansaipaint.com.vn/wp-content/uploads/2024/06/Lien-He-04.jpg" alt="item 1">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="item">
                            <img src="https://kansaipaint.com.vn/wp-content/uploads/2024/06/Lien-He-05.jpg" alt="item 2">
                        </div>
                    </div>
                </div>
                
                <!-- Các nút điều khiển -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </div>
</div>

<!-- Thêm liên kết đến Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
    const swiper = new Swiper('.swiper-container', {
        loop: true, // Bật chế độ lặp lại
        autoplay: {
            delay: 3000, // Thay đổi hình ảnh mỗi 3 giây
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
</script>

</body>
</html>
