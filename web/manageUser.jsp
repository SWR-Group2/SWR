
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

                        <h1 class="h3 mb-3">Manage Account</h1>

                        <div class="row">
                            <div class="card">
                                <div class="card-header">
                                    <form class="d-none d-sm-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <input type="text" class="form-control" placeholder="Search…" aria-label="Search">
                                            <button class="btn" type="button">
                                                <i class="align-middle" data-feather="search"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>

                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="width:10%;">#</th>
                                            <th style="width:40%;">Name</th>
                                            <th style="width:25%">Email</th>
                                            <th class="d-none d-md-table-cell" style="width:25%">Date of Birth</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <img src="img/avatars/avatar-5.jpg" width="48" height="48" class="rounded-circle me-2" alt="Avatar"> Vanessa
                                                Tucker
                                            </td>
                                            <td>864-348-0485</td>
                                            <td class="d-none d-md-table-cell">June 21, 1961</td>
                                            <td class="table-action">
                                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="img/avatars/avatar-2.jpg" width="48" height="48" class="rounded-circle me-2" alt="Avatar"> William
                                                Harris
                                            </td>
                                            <td>914-939-2458</td>
                                            <td class="d-none d-md-table-cell">May 15, 1948</td>
                                            <td class="table-action">
                                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="img/avatars/avatar-3.jpg" width="48" height="48" class="rounded-circle me-2" alt="Avatar"> Sharon
                                                Lessman
                                            </td>
                                            <td>704-993-5435</td>
                                            <td class="d-none d-md-table-cell">September 14, 1965</td>
                                            <td class="table-action">
                                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="img/avatars/avatar-4.jpg" width="48" height="48" class="rounded-circle me-2" alt="Avatar"> Christina
                                                Mason
                                            </td>
                                            <td>765-382-8195</td>
                                            <td class="d-none d-md-table-cell">April 2, 1971</td>
                                            <td class="table-action">
                                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img src="img/avatars/avatar-2.jpg" width="48" height="48" class="rounded-circle me-2" alt="Avatar"> Robin
                                                Schneiders
                                            </td>
                                            <td>202-672-1407</td>
                                            <td class="d-none d-md-table-cell">October 12, 1966</td>
                                            <td class="table-action">
                                                <a href="#"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#"><i class="align-middle" data-feather="trash"></i></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
        </script></body>

</html>