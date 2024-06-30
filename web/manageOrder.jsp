

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

        <title>OSS - Manage Order</title>

        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>body {
                opacity: 0;
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
            <%@include file="nav-bar.jsp" %>
            <div class="main">
                <%@include file="header2.jsp" %>
                <main class="content">
                    <div class="container-fluid p-0">
                        <h1 class="h3 mb-3">Manage Order</h1>
                        <div class="row">
                            <div class="card">
                                <div class="card-header">
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <select class="form-select" id="filterRole">
                                                <option value="">All Sale Staff</option>
                                                <option value="admin">Đức Vinh</option>
                                                <option value="user">Bá Ức</option>
                                            </select>
                                        </div>
                                    </form>
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <select class="form-select" id="filterStatus">
                                                <option value="">All Status</option>
                                                <option value="active">Summited</option>
                                                <option value="inactive">Paid</option>
                                                <option value="inactive">Verified</option>
                                            </select>
                                        </div>
                                    </form>
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <select class="form-select" id="filterStatus">
                                                <option value="">From</option>
                                                <option value="">16/6/2024</option>
                                            </select>
                                        </div>
                                    </form>
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <select class="form-select" id="filterStatus">
                                                <option value="">To</option>
                                                <option value="">16/6/2024</option>
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
                                    <a class="btn btn-square btn-success right" href="createOrder.jsp">New Order</a>
                                </div>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Order Date</th>
                                            <th>Receiver</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Amount</th>
                                            <th>Created By</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>#ORD012345</td>
                                            <td>16/06/2024</td>
                                            <td>Bá Thuật</td>
                                            <td>Thuatnqb@fpt.edu.vn</td>
                                            <td>0123456789</td>
                                            <td>2.550.000đ</td>
                                            <td>Đức Vinh</td>
                                            <td>Submitted</td>
                                            <td class="table-action">
                                                <a href="orderDetail.jsp"><i class="align-middle" data-feather="eye"></i></a>
                                                <a href=""><i class="align-middle" data-feather="x-circle" style="color: red;"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>#ORD012333</td>
                                            <td>16/06/2024</td>
                                            <td>Bá Quân</td>
                                            <td>Quannqb@fpt.edu.vn</td>
                                            <td>0223456789</td>
                                            <td>5.150.000đ</td>
                                            <td>Đức Vinh</td>
                                            <td>Verified</td>
                                            <td class="table-action">
                                                <a href="orderDetail.jsp"><i class="align-middle" data-feather="eye"></i></a>
                                                <a href=""><i class="align-middle" data-feather="x-circle" style="color: red;"></i></a>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>#ORD012332</td>
                                            <td>16/06/2024</td>
                                            <td>Bá Ước</td>
                                            <td>Uocnqb@fpt.edu.vn</td>
                                            <td>0333456789</td>
                                            <td>3.250.000đ</td>
                                            <td>Đức Vinh</td>
                                            <td>Submitted</td>
                                            <td class="table-action">
                                                <a href="orderDetail.jsp"><i class="align-middle" data-feather="eye"></i></a>
                                                <a href=""><i class="align-middle" data-feather="x-circle" style="color: red;"></i></a>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>#ORD012387</td>
                                            <td>16/06/2024</td>
                                            <td>Bá Toàn</td>
                                            <td>Toannqb@fpt.edu.vn</td>
                                            <td>0444456789</td>
                                            <td>4.000.000đ</td>
                                            <td>Đức Vinh</td>
                                            <td>Paid</td>
                                            <td class="table-action">
                                                <a href="orderDetail.jsp"><i class="align-middle" data-feather="eye"></i></a>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
                    </div>
                </main>
                <%@include file="footer2.jsp" %>
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

            // Populate Edit User Modal with user data
            $('#editUserModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget); // Button that triggered the modal
                var id = button.data('id');
                var name = button.data('name');
                var email = button.data('email');
                var role = button.data('role');
                var status = button.data('status');

                var modal = $(this);
                modal.find('#editName').val(name);
                modal.find('#editEmail').val(email);
                modal.find('#editRole').val(role);
                modal.find('input[name="editStatus"][value="' + status + '"]').prop('checked', true);
            });
        </script>
    </body>
</html>
