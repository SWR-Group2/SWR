

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

        <title>OSS - Manage Account</title>

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

        <!-- Create User Modal -->
        <div class="modal fade" id="createUserModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Create New User</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form id="createUserForm">
                            <div class="form-group">
                                <label for="name">Name*</label>
                                <input type="text" class="form-control" id="name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email*</label>
                                <input type="email" class="form-control" id="email" required>
                            </div>
                            <div class="form-group">
                                <label for="role">Role:</label>
                                <select class="form-control" id="role" required>
                                    <option value="admin">Sale Staff</option>
                                    <option value="user" selected>User</option>
                                    <option value="guest">Ware House Staff</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="status">Status:</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="status" id="active" value="active" required checked>
                                    <label class="form-check-label" for="active">Active</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="status" id="inactive" value="inactive" required>
                                    <label class="form-check-label" for="inactive">Inactive</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="status" id="unverified" value="unverified" required>
                                    <label class="form-check-label" for="unverified">Unverified</label>
                                </div>
                            </div>
                        </form>
                    </div>

                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
                    </div>

                </div>
            </div>
        </div>

        <!-- Edit User Modal -->
        <div class="modal fade" id="editUserModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">

                    </div>

                    <!-- Modal Body -->
                    <div class="modal-body">

                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Save Changes</button>
                    </div>
                </div>
            </div>
        </div>


        <div class="wrapper">
            <%@include file="nav-bar.jsp" %>
            <div class="main">
                <%@include file="header2.jsp" %>
                <main class="content">
                    <div class="container">
                        <h1 class="h3 mb-3">Manage Account</h1>
                        <div class="row">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="modal-title"></h4>
                                </div>
                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="editName">User ID</label>
                                                <input type="text" class="form-control" value="1" readonly>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="editName">Full Name*</label>
                                                <input type="text" class="form-control" value="Do Tien Thuat" required>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="editName">Username*</label>
                                                <input type="text" class="form-control" value="dothuat123" required>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="editEmail">Email*</label>
                                                <input type="email" class="form-control" value="thuat@gmail.com" required>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="editPhoneNumber">Mobile</label>
                                                <input type="text" class="form-control" value="012345678">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="editPhoneNumber">Address</label>
                                                <input type="text" class="form-control" value="thon 3 hoa lac">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="editPhoneNumber">City/Province</label>
                                                <select class="form-select" id="editRole" required>
                                                    <option value="admin">Ha Noi</option>
                                                    <option value="user">Ha Nam</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="editPhoneNumber">District</label>
                                                <select class="form-select" id="editRole" required>
                                                    <option value="admin">Thach That</option>
                                                    <option value="user">Quoc Oai</option>
                                                    <option value="guest">Ba Dinh</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="editPhoneNumber">Wards</label>
                                                <select class="form-select" id="editRole" required>
                                                    <option value="admin">Thach Hoa</option>
                                                    <option value="user">Tan Xa</option>
                                                    <option value="guest">Binh Yen</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="editPhoneNumber">Role</label>
                                                <select class="form-select" id="editRole" required>
                                                    <option value="admin">Sale Staff</option>
                                                    <option value="user">User</option>
                                                    <option value="guest">Ware House Staff</option>
                                                </select>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="row">
                                            <div class="col-md-12 mb-3 text-center">
                                                <img id="productImagePreview" src="img/avatars/avatar.jpg" alt="Product Image" class="img-thumbnail mb-2" style="max-width: 200px;">
                                                <br>
                                                <label for="productImage" class="form-label"><a href="#">Choose from...</a></label>
                                                <input type="file" class="form-control d-none" id="productImage" accept="image/*" onchange="previewImage(event)">
                                            </div>
                                            <label for="editStatus">Status:</label>

                                            <div class="col-md-12 ">
                                                <div class="form-check btn btn-default">
                                                    <input class="form-check-input" type="radio" name="editStatus" id="editActive" value="active" required checked>
                                                    <label class="form-check-label" for="editActive">Active</label>
                                                </div>
                                                <div class="form-check btn btn-default">
                                                    <input class="form-check-input" type="radio" name="editStatus" id="editInactive" value="inactive" required>
                                                    <label class="form-check-label" for="editInactive">Inactive</label>
                                                </div>
                                                <div class="form-check btn btn-default">
                                                    <input class="form-check-input" type="radio" name="editStatus" id="editUnverified" value="unverified" required>
                                                    <label class="form-check-label" for="editUnverified">Unverified</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a class="btn btn-success col-1" href="manageUser.jsp">Save</a>
                                <h4 class="card-footer"></h4>
                            </div>
                        </div>
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
                                                            </body>
                                                            </html>
