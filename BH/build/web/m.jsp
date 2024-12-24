<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page Contacts</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh; /* Chiếm toàn bộ chiều cao màn hình */
            overflow: hidden; /* Ẩn thanh cuộn */
        }
        #content {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .ast-container {
            padding: 0;
            width: 100%;
            height: 100%;
        }
        .page-contacts img {
            width: 100vw; /* Chiếm toàn bộ chiều rộng màn hình */
            height: 100vh; /* Chiếm toàn bộ chiều cao màn hình */
            object-fit: cover; /* Đảm bảo ảnh không bị méo */
        }
    </style>
</head>
<body>
    <div id="content" class="site-content">
        <div class="ast-container">
            <div class="page-contacts">
                <a class="sha-kh-support" href="#" data-bs-toggle="modal" data-bs-target="#sha-kh-support">
                    <img src="https://kansaipaint.com.vn/wp-content/uploads/2024/06/Quy-du-an-cong-dong-scaled.jpg" alt="page_contact_image">
                </a>
            </div>
        </div> <!-- ast-container -->
    </div>

    <!-- Modal -->
    <div class="modal fade" id="sha-kh-support" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Support Information</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <img src="https://kansaipaint.com.vn/wp-content/uploads/2024/06/Quy-du-an-cong-dong-scaled.jpg" alt="page_contact_image" style="width: 100%; height: 100%; object-fit: cover;">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>

</body>
</html>