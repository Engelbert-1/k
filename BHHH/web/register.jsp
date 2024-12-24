<!doctype html>


<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Register</title>
    <link rel="icon" href="https://logosandtypes.com/wp-content/uploads/2022/07/Kansai-Paint.png" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="font/flaticon.css">
    <link rel="stylesheet" href="css/style_1.css">
</head>

<body>
    <section class="fxt-template-animation fxt-template-layout1" >
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-12 fxt-bg-color" >
                    <div class="fxt-content" >
                        <div class="fxt-header" style="margin-bottom: 15px">
                            <a href="home" class="fxt-logo">
    <img src="https://logosandtypes.com/wp-content/uploads/2022/07/Kansai-Paint.png" alt="Logo" width="50" height="auto">
</a>
                            <div class="fxt-page-switcher">
                                <a href="login" class="switcher-text1">Log In</a>
                                <a href="register" class="switcher-text1 active" style="color: #003366;">Register</a>
                            </div>
                        </div>
                        <div class="fxt-form">
                            <h2 style="color: #003366">Register</h2>
                            <h5 style="color: red">${requestScope.error}</h5>
                            <form id="form" method="post">
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-1">
                                        <input type="name" class="form-control" name="name" placeholder="Full Name" required="required">
                                        <i class="fa-solid fa-magnifying-glass"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-2">
                                        <input type="text" class="form-control" name="username" placeholder="User Name" required="required">
                                        <i class="fa-solid fa-user"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-3">
                                        <input type="password" class="form-control" name="password" placeholder="Password" required="required">
                                        <i class="fa-solid fa-lock"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-3">
                                        <input type="text" class="form-control" name="phone" placeholder="Your Phone" required="required"> 
                                        <i class="fa-solid fa-phone"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-3">
                                        <input type="text" class="form-control" name="email" placeholder="Your Email" required="required"> 
                                        <i class="fa-solid fa-envelope"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div style="margin-bottom: 10px">Date of birth</div>
                                    <input type="hidden" name="dob" value="" id="here"/>
                                    <select class="bear-dates" id="dobDay" ></select>
                                    <select class="bear-months" id="dobMonth"></select>
                                    <select class="bear-years" id="dobYear"></select>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-4">
                                        <button onclick="submitForm()" class="fxt-btn-fill" style="background-color: #003366; color: white;">Register</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-12 fxt-none-767 fxt-bg-img" data-bg-image="https://sonjotun.vn/upload/images/10-goi-y-cho-phong-khach-dep%20-1.jpg"></div>
            </div>
        </div>
    </section> 
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/validator.min.js"></script>
    <script src="js/main_1.js"></script>
    <script src="js/calender.js"></script>
    <script type="text/javascript">
                                            dates('option');
                                            months('option', 11, 12);
                                            years('option', 1980, 2023);
                                            function monthNameToNumber(monthName) {
                                                var months = [
                                                    'January', 'February', 'March', 'April', 'May', 'June',
                                                    'July', 'August', 'September', 'October', 'November', 'December'
                                                ];
                                                var lowerMonthName = monthName.toLowerCase();
                                                var monthIndex = months.findIndex(function (month) {
                                                    return month.toLowerCase() === lowerMonthName;
                                                });
                                                return monthIndex !== -1 ? monthIndex + 1 : -1;
                                            }

                                            function submitForm() {
                                                var here = document.querySelector('#here');
                                                var form = document.getElementById('form');
                                                var dobDay = document.getElementById('dobDay').value;
                                                var dobMonthText = document.getElementById('dobMonth').value;
                                                var dobMonth = monthNameToNumber(dobMonthText);
                                                var dobYear = document.getElementById('dobYear').value;
                                                if (dobMonth < 10 && dobDay < 10) {
                                                    dobFull = dobYear + '-0' + dobMonth + '-0' + dobDay;
                                                } else if (dobMonth < 10 && !(dobDay < 10)) {
                                                    dobFull = dobYear + '-0' + dobMonth + '-' + dobDay;
                                                } else if (dobDay < 10 && !(dobMonth < 10)) {
                                                    dobFull = dobYear + '-' + dobMonth + '-0' + dobDay;
                                                } else {
                                                    dobFull = dobYear + '-' + dobMonth + '-' + dobDay;
                                                }

                                                here.value = dobFull;
                                                form.submit();
                                            }
    </script>
</body>

</html>