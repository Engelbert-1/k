<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thank You for Your Purchase</title>
        <style>
            body, html {
                margin: 0;
                padding: 0;
                height: 100%;
                width: 100%;
            }
            .full-screen-img {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                object-fit: cover; /* Đảm bảo ảnh bao phủ toàn bộ mà không bị bóp méo */
            }
            h1 {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                color: white;
                font-size: 3rem;
                text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7); /* Bóng chữ để dễ đọc */
                z-index: 1;
            }
        </style>
    </head>
    <body>
        <img src="images/Screenshot 2024-10-22 170812.png" alt="Cảm ơn bạn đã mua hàng" class="full-screen-img">
    </body>
</html>