<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
        </script></head>
    <!--
      HOW TO USE: 
      data-theme: default (default), dark, light, colored
      data-layout: fluid (default), boxed
      data-sidebar-position: left (default), right
      data-sidebar-layout: default (default), compact
    -->

    <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
        <div class="wrapper">
            <%@include file="nav-bar.jsp" %>
            <div class="main">
                <%@include file="header2.jsp" %>
                <main class="content">
                    <div class="container-fluid p-0">

                        <h1 class="h3 mb-3">Settings</h1>

                        <div class="row">
                            <div class="col-md-3 col-xl-2">

                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="card-title mb-0">Profile Settings</h5>
                                    </div>

                                    <div class="list-group list-group-flush" role="tablist">
                                        <a class="list-group-item list-group-item-action active" data-bs-toggle="list" href="#myprofile" role="tab">
                                            My Profile
                                        </a>
                                        <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#password" role="tab">
                                            Password
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-9 col-xl-10">
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
                                                            <div class="mb-3">
                                                                <label class="form-label" for="name">Name</label>
                                                                <input type="text" class="form-control" id="name" name="name" value="Nguyen Van A">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label" for="email">Email</label>
                                                                <input type="email" class="form-control" id="email" name="email" value="nguyenvanA@gmail.com">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label" for="address">Address</label>
                                                                <textarea rows="2" class="form-control" id="address" name="address">Thon Thach Hoa xa Thach That Ha Noi</textarea>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="text-center">
                                                                <img alt="Charles Hall" src="img/avatars/avatar.jpg" class="rounded-circle img-responsive mt-2"
                                                                     width="128" height="128" />
                                                                <div class="mt-2">
                                                                    <span class="btn btn-primary"><i class="fas fa-upload"></i> Upload</span>
                                                                </div>
                                                                <small>For best results, use an image at least 128px by 128px in .jpg format</small>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <button type="submit" class="btn btn-primary">Save</button>
                                                </form>

                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="password" role="tabpanel">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title">Password</h5>

                                                    <form>
                                                        <div class="mb-3">
                                                            <label class="form-label" for="inputPasswordCurrent">Current password</label>
                                                            <input type="password" class="form-control" id="inputPasswordCurrent">
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label" for="inputPasswordNew">New password</label>
                                                            <input type="password" class="form-control" id="inputPasswordNew">
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-label" for="inputPasswordNew2">Verify password</label>
                                                            <input type="password" class="form-control" id="inputPasswordNew2">
                                                        </div>
                                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                                    </form>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                </main>

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row text-muted">
                            <div class="col-6 text-start">
                                <p class="mb-0">
                                    <a href="https://adminkit.io/" target="_blank" class="text-muted"><strong>OSS</strong></a> &copy;
                                </p>
                            </div>
                            <div class="col-6 text-end">
                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Support</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Help Center</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Privacy</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Terms</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
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
        </script></body>

</html>