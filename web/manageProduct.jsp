<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Responsive Admin & Dashboard Template based on Bootstrap 5">
        <meta name="author" content="AdminKit">
        <meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="shortcut icon" href="img/icons/icon-48x48.png" />
        <link rel="canonical" href="tables-bootstrap.html" />

        <title>OSS - Manage Product</title>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>
            body {
                opacity: 0;
            }
            .search-filter-group {
                display: flex;
                align-items: center;
                width:600px;
            }
            .search-filter-group .input-group-navbar {
                margin-right: 300px;
            }
        </style>
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-120946860-10"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-120946860-10', {'anonymize_ip': true});
        </script>
    </head>

    <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
        <div class="wrapper">
            <%@ include file="nav-bar.jsp" %>
            <div class="main">
                <%@ include file="header2.jsp" %>

                <main class="content">
                    <div class="container-fluid p-0">
                        <h1 class="h3 mb-3">Manage Products</h1>

                        <div class="row">
                            <div class="card">
                                <div class="card-header">
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <select class="form-control" id="filterRole">
                                                <option value="">All Category</option>
                                                <option value="admin">Laptop</option>
                                                <option value="user">Table</option>
                                                <option value="guest">Sound</option>
                                            </select>
                                        </div>
                                    </form>
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <input type="text" class="form-control" placeholder="Search…" aria-label="Search" id="searchInput">
                                            <button class="btn" type="button" id="searchButton">
                                                <i class="align-middle" data-feather="search"></i>
                                            </button>
                                        </div>
                                    </form>
                                    <a class="btn btn-square btn-success float-right" >New Product</a>
                                </div>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Product Name</th>
                                            <th>Category</th>
                                            <th>Quantity</th>
                                            <th>Price</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="productTableBody">
                                        <tr data-product-type="Quần">
                                            <td>1</td>
                                            <td>Laptop Victus</td>
                                            <td>Laptop</td>
                                            <td>100</td>
                                            <td>250</td>
                                            <td>
                                                <a href="productDetail.jsp?id=1"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(1)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Áo">
                                            <td>2</td>
                                            <td>Ipad Gen 9</td>
                                            <td>Tablet</td>
                                            <td>106</td>
                                            <td>199</td>
                                            <td>
                                                <a href="productDetail.jsp?id=2"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(2)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Đồng hồ">
                                            <td>3</td>
                                            <td>Headphone Sony</td>
                                            <td>Sound</td>
                                            <td>80</td>
                                            <td>1500</td>
                                            <td>
                                                <a href="productDetail.jsp?id=3"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(3)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Điện thoại">
                                            <td>4</td>
                                            <td>Iphone 15 promax</td>
                                            <td>Phone</td>
                                            <td>30</td>
                                            <td>670</td>
                                            <td>
                                                <a href="productDetail.jsp?id=4"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(4)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Giày">
                                            <td>5</td>
                                            <td>Laptop Mixue</td>
                                            <td>Laptop</td>
                                            <td>300</td>
                                            <td>19999</td>
                                            <td>
                                                <a href="productDetail.jsp?id=5"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(5)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Giày">
                                            <td>6</td>
                                            <td>Samsung Galaxy s22</td>
                                            <td>Phone</td>
                                            <td>57</td>
                                            <td>210</td>
                                            <td>
                                                <a href="productDetail.jsp?id=6"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(6)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <!-- Add other rows similarly -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-sm">
                            <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-left"></i></a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
                        </ul>
                    </nav>
                </main>
                <%@ include file="footer2.jsp" %>
            </div>
        </div>

        <script src="js/app.js"></script>
        <script>
            function deleteProduct(productId) {
                // Implement your delete product logic here
                alert('Delete product with ID: ' + productId);
            }
        </script>
    </body>

</html>
