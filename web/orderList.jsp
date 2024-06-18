<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
        <meta name="author" content="AdminKit">
        <meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="shortcut icon" href="img/icons/icon-48x48.png" />
        <link rel="canonical" href="tables-bootstrap.html" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <title>Order List</title>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>body {
                opacity: 0;
            }</style>
        <style>
            .d-flex {
                display: flex;
            }
            .justify-content-between {
                justify-content: space-between;
            }
            .justify-content-center {
                justify-content: center;
            }
            .align-items-center {
                align-items: center;
            }
            .mr-2 {
                margin-right: 8px;
            }
        </style>
        <!-- END SETTINGS -->
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
                        <h1 class="mt-4">Order List</h1>
                        <!-- Hàng chứa nút New Order và ô tìm kiếm -->
                        <div class="row mb-2 d-flex justify-content-between align-items-center">
                            <div class="col-md-6 d-flex justify-content-center align-items-center">
                                <input type="text" class="form-control mr-2" placeholder="Enter keyword to search">
                                <button class="btn btn-primary">Search</button>
                            </div>
                            <div class="col-md-2">
                                <a href="createOrder.jsp" class="btn btn-success" data-toggle="modal">
                                    <i class="material-icons">&#xE147;</i> <span>New Order</span>
                                </a>
                            </div>
                        </div>
                        <!-- Hàng chứa các tùy chọn -->
                        <div class="row mb-2">
                            <div class="col-md-2">
                                <select class="form-control">
                                    <option>All Staff</option>
                                    <option>Đức Vinh</option>
                                    <option>Bá Vinh</option>
                                </select>
                            </div>
                            <div class="col-md-2">
                                <select class="form-control">
                                    <option>All Status</option>
                                    <option>Submitted</option>
                                </select>
                            </div>
                            <div class="col-md-2">
                                <select class="form-control">
                                    <option>16/6/2024</option>
                                </select>
                            </div>
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Order ID</th>
                                    <th>Order Date</th>
                                    <th>Receiver</th>
                                    <th>Email</th>
                                    <th>Phone Number</th>
                                    <th>Amount</th>
                                    <th>Created By</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>T12345</td>
                                    <td>16/06/2024</td>
                                    <td>Bá Thuật</td>
                                    <td>Thuatnqb@fpt.edu.vn</td>
                                    <td>0123456789</td>
                                    <td>2.550.000đ</td>
                                    <td>Đức Vinh</td>
                                    <td>Submitted</td>
                                    <td><a href="orderDetails.jsp" class="view" title="View" data-toggle="modal"><i class="material-icons">&#xE417;</i></a>
                                        <a href="#" class="delete" title="Delete" data-toggle="tooltip">
                                            <i class="material-icons">&#xE872;</i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>T12333</td>
                                    <td>16/06/2024</td>
                                    <td>Bá Quân</td>
                                    <td>Quannqb@fpt.edu.vn</td>
                                    <td>0223456789</td>
                                    <td>5.150.000đ</td>
                                    <td>Đức Vinh</td>
                                    <td>Verified</td>
                                    <td><a href="orderDetails.jsp" class="view" title="View" data-toggle="modal"><i class="material-icons">&#xE417;</i></a>
                                        <a href="#" class="delete" title="Delete" data-toggle="tooltip">
                                            <i class="material-icons">&#xE872;</i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>T12332</td>
                                    <td>16/06/2024</td>
                                    <td>Bá Ước</td>
                                    <td>Uocnqb@fpt.edu.vn</td>
                                    <td>0333456789</td>
                                    <td>3.250.000đ</td>
                                    <td>Đức Vinh</td>
                                    <td>Submitted</td>
                                    <td><a href="orderDetails.jsp" class="view" title="View" data-toggle="modal"><i class="material-icons">&#xE417;</i></a>
                                        <a href="#" class="delete" title="Delete" data-toggle="tooltip">
                                            <i class="material-icons">&#xE872;</i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>T12387</td>
                                    <td>16/06/2024</td>
                                    <td>Bá Toàn</td>
                                    <td>Toannqb@fpt.edu.vn</td>
                                    <td>0444456789</td>
                                    <td>4.000.000đ</td>
                                    <td>Đức Vinh</td>
                                    <td>Paid</td>
                                    <td><a href="orderDetails.jsp" class="view" title="View" data-toggle="modal"><i class="material-icons">&#xE417;</i></a>
                                        <a href="#" class="delete" title="Delete" data-toggle="tooltip">
                                            <i class="material-icons">&#xE872;</i>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">&laquo;</a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">...</a></li>
                                <li class="page-item"><a class="page-link" href="#">10</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">&raquo;</a>
                                </li>
                            </ul>
                        </nav>
                        <%@ include file="footer2.jsp" %>
                    </div>
                </main>
            </div>
        </div>

        <script src="js/app.js"></script>
        <script>
            document.addEventListener("DOMContentLoaded", function (event) {
                setTimeout(function () {
                    if (localStorage.getItem('popState') !== 'shown') {
                        window.notyf.open({
                            type: "success",
                            message: "Get access to all 500+ components and 45+ pages with AdminKit PRO. <u><a class=\"text-white\" href=\"https://adminkit.io/pricing\" target=\"_blank\">More info</a></u> 🚀",
                            duration: 10000,
                            ripple: true,
                            dismissible: false,
                            position: {
                                x: "left",
                                y: "bottom"
                            }
                        });

                        localStorage.setItem('popState', 'shown');
                    }
                }, 15000);
            });
        </script>
    </body>

</html>
