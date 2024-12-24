<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản lí sản phẩm</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/manager.css" rel="stylesheet" type="text/css"/>
    <style>
        body {
            background-image: url('https://vatlieuxaydung.org.vn/Upload/48/Nam_2019/Thang_1/Ngay_30/vlxd.org_son.jpeg');
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
        }
        img {
            width: 200px;
            height: 120px;
        }
         .table-title {
        background-color: #141F48; /* Màu nền #141F48 */
        color: white; /* Màu chữ trắng để tạo sự tương phản */
        padding: 15px; /* Khoảng cách nội bộ */
        border-radius: 8px; /* Bo tròn các góc */
    }

    .table-title h2 {
        color: white; /* Màu chữ của tiêu đề */
    }

    .table-title .btn-success {
        background-color: #28a745; /* Màu nút thêm sản phẩm */
        color: white;
    }
        
    </style>
</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Quản lí <b>sản phẩm</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addProductModal" class="btn btn-success" data-toggle="modal">
                            <i class="material-icons">&#xE147;</i> <span>Thêm sản phẩm</span>
                        </a>						
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="selectAll"></label>
                            </span>
                        </th>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Image</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listP}" var="o">
                        <tr>
                            <td>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="checkbox${o.id}" name="options[]" value="${o.id}"><label for="checkbox${o.id}"></label>
                                </span>
                            </td>
                            <td>${o.id}</td>
                            <td>${o.name}</td>
                            <td>
                                <img src="${o.image}" alt="${o.name}">
                            </td>
                            <td>${o.price}</td>
                            <td>
                                <a href="loadProduct?id=${o.id}" class="edit" data-toggle="modal">
                                    <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                </a>
                                <a href="delete?id=${o.id}" class="delete" data-toggle="modal">
                                    <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <a href="home"><button type="button" class="btn btn-primary">Back to home</button></a>
    </div>

    <!-- Add Product Modal HTML -->
    <div id="addProductModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="add" method="post">
                    <div class="modal-header">						
                        <h4 class="modal-title">Add Product</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">					
                        <div class="form-group">
                            <label>Name</label>
                            <input name="name" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Image</label>
                            <input name="image" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input name="price" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Title</label>
                            <textarea name="title" class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select name="category" class="form-control" required><c:forEach items="${listCC}" var="c">
                                    <option value="${c.cid}">${c.cname}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-success" value="Add">
                    </div>
                </form>
            </div>
        </div>
    </div>

    

    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>