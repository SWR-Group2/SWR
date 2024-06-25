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
        <title>Tables | AdminKit Demo</title>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>body {
                opacity: 0;
            }</style>
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
                        <div class="row">
                            <div class="flex">
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="myprofile" role="tabpanel">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title mb-0">My Profile</h5>
                                            </div>
                                            <div class="card-body">
                                                <form>
                                                    <div class="row">
                                                        <div class="col-md-8">
                                                            <div class="row mb-3">
                                                                <div class="col-md-6">
                                                                    <label class="form-label" for="fullName">Full name*</label>
                                                                    <input type="text" class="form-control" id="fullName" name="fullName">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label" for="userName">User Name*</label>
                                                                    <input type="text" class="form-control" id="userName" name="userName">
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="col-md-6">
                                                                    <label class="form-label" for="email">Email*</label>
                                                                    <input type="email" class="form-control" id="email" name="email">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label" for="mobile">Mobile</label>
                                                                    <input type="text" class="form-control" id="mobile" name="mobile">
                                                                </div>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label" for="address">Address</label>
                                                                <textarea rows="2" class="form-control" id="address" name="address"></textarea>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="col-md-6">
                                                                    <label class="form-label" for="cityProvince">City/Province</label>
                                                                    <select class="form-select" id="cityProvince" name="cityProvince">
                                                                        <option value="" disabled selected>City/Province</option>
                                                                        <!-- Options go here -->
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label" for="district">District</label>
                                                                    <select class="form-select" id="district" name="district">
                                                                        <option value="" disabled selected>District</option>
                                                                        <!-- Options go here -->
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="col-md-6">
                                                                    <label class="form-label" for="wards">Wards</label>
                                                                    <select class="form-select" id="wards" name="wards">
                                                                        <option value="" disabled selected>Wards</option>
                                                                        <!-- Options go here -->
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label" for="userRole">User Role</label>
                                                                    <input type="text" class="form-control" id="userRole" name="userRole" readonly>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 text-center">
                                                            <img alt="Avatar" src="img/avatars/avatar.jpg" class="rounded-circle img-responsive mt-2" width="128" height="128" />
                                                            <div class="mt-2">
                                                                <a href="#" class="btn btn-primary"><i class="fas fa-upload"></i> Upload</a>
                                                            </div>
                                                            <div class="mt-2">
                                                                <a href="#" class="btn btn-link btn-change-password">Change Password</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Submit</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                </main>
                <%@include file="footer2.jsp" %>
            </div>
        </div>

        <script src="js/app.js"></script>

        <!-- Password Change Modal -->
        <div class="modal fade" id="passwordChangeModal" tabindex="-1" aria-labelledby="passwordChangeModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="passwordChangeModalLabel">Password Change</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <label for="newPassword1" class="form-label">New Password</label>
                                <input type="password" class="form-control" id="newPassword1">
                            </div>
                            <div class="mb-3">
                                <label for="newPassword2" class="form-label">New Password</label>
                                <input type="password" class="form-control" id="newPassword2">
                            </div>
                            <div class="mb-3">
                                <label for="passwordConfirmation" class="form-label">Password Confirmation</label>
                                <input type="password" class="form-control" id="passwordConfirmation">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Update</button>
                    </div>
                </div>
            </div>
        </div>

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

                // Change password modal
                document.querySelector('.btn-change-password').addEventListener('click', function () {
                    var myModal = new bootstrap.Modal(document.getElementById('passwordChangeModal'), {});
                    myModal.show();
                });
            });
        </script>
    </body>
</html>
