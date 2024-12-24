<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="https://static.vecteezy.com/system/resources/previews/002/061/701/original/video-games-icon-with-tv-and-gamepad-eps-vector.jpg">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/home.css" rel="stylesheet" />
        <title>About</title>
    </head>
    <body style="background-color: #0d0c0c">
        <jsp:include page="menu.jsp"></jsp:include>
            <header style="background-size: 100% 300px; background-repeat: no-repeat; background-image: url(https://i.imgur.com/9A12u2b.jpg)" class="py-5">
                <div class="container px-4 px-lg-5 my-5">
                    <div class="text-center text-white">
                        <h1 class="display-4 fw-bolder" style="color: white">RGBShop</h1>
                        <p class="lead fw-normal text-white-50 mb-0">The Best Quality Game Shop Website</p>
                    </div>
                </div>
            </header>  
            <section class="py-5">
                <div class="container">
                    <div style="color: white" class="row">
                        <div class="col-md-5">
                            <img src="https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2018%2F12%2Ftop-10-video-games-2018-004.jpg?w=2000&cbr=1&q=90&fit=max" width="100%" height="350px">
                        </div>
                        <div class="col-md-7 py-5 wrap-about pb-md-5">
                            <div class="heading-section-bold mb-4 mt-md-5">
                                <div class="ml-md-0">
                                    <h2 class="mb-4 text-center">Access Games Instantly</h2>
                                </div>
                            </div>
                            <div class="pb-md-5">
                                <p>With many games from AAA to indie and everything in-between. Enjoy exclusive deals, automatic game updates, and other great perks. Discover, play, and get involved with games as they evolve. Be the first to see what's coming and become part of the process.</p>
                                <p class="text-center"><a href="home" class="btn btn-dark">Shop now</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-5">
                <div class="container">
                    <div style="color: white" class="row">
                        <div class="col-md-7 py-5 wrap-about pb-md-5">
                            <div class="heading-section-bold mb-4 mt-md-5">
                                <div class="ml-md-0">
                                    <h2 class="mb-4 text-center">Experience Hardware</h2>
                                </div>
                            </div>
                            <div class="pb-md-5">
                                <p>We created the Controller and the VR technologies that power the HTC Vive to making gaming on the PC even better. RGBShop encourages developers to include controller support in their games including PlayStation, Xbox, and Nintendo controllers.</p>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <img src="https://roadtovrlive-5ea0.kxcdn.com/wp-content/uploads/2016/10/playstation-vr-review-4.jpg" width="100%" height="350px">
                        </div>
                    </div>
                </div>
            </section>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
