

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="icon" href="image/101512512_p0_master1200.jpg">
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">

        <!-- Title Page-->
        <title>Edit Game</title>

        <!-- Icons font CSS-->
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="css/crud.css" rel="stylesheet" media="all">
    </head>

    <body>
        <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
            <div class="wrapper wrapper--w790">
                <div class="card card-5">
                    <div class="card-heading">
                        <h2 class="title">Edit information account</h2>
                    </div>
                    <div class="card-body">
                        <c:set var="p" value="${requestScope.Account}"/>
                        <form action="updateAcc" method="post">
                            <p class="text-success">${requestScope.success}</p>
                            <p class="text-danger">${requestScope.error}</p>
                            <div class="form-row">
                                <div class="name">User</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="user" readonly value="${p.user}">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Old Password</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="pass">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">New Password</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="pass">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Confirm Password</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="re_pass">
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="name">Email</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="email" value="${p.email}">
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn--radius-2 btn--red" type="submit">Update</button>
                        </form>
                        <a href="home"><button class="btn btn--radius-2 btn--blue">Back</button></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Jquery JS-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Vendor JS-->
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/datepicker/moment.min.js"></script>
        <script src="vendor/datepicker/daterangepicker.js"></script>

        <!-- Main JS-->
        <script src="js/global.js"></script>

    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->

