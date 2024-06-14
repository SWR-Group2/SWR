<%-- 
    Document   : login
    Created on : Jun 13, 2024, 10:56:00 PM
    Author     : AD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <link rel="canonical" href="pages-sign-in.html" />

        <title>Sign In </title>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">

        <!-- Choose your prefered color scheme -->
        <!-- <link href="css/light.css" rel="stylesheet"> -->
        <!-- <link href="css/dark.css" rel="stylesheet"> -->

        <!-- BEGIN SETTINGS -->
        <!-- Remove this after purchasing -->
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>
            body {
                opacity: 0;
            }

            /* Màu sắc cho nút Facebook */
            .facebook {
                background-color: #3b5998;
                color: white;
                border: none;
            }

            .facebook:hover {
                background-color: #2d4373;
                color: white;
            }

            /* Màu sắc cho nút Google */
            .google-plus {
                background-color: #db4437;
                color: white;
                border: none;
            }

            .google-plus:hover {
                background-color: #c23321;
                color: white;
            }
        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <!--
      HOW TO USE: 
      data-theme: default (default), dark, light, colored
      data-layout: fluid (default), boxed
      data-sidebar-position: left (default), right
      data-sidebar-layout: default (default), compact
    -->

    <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
        <main class="d-flex w-100 h-100">
            <div class="container d-flex flex-column">
                <div class="row vh-100">
                    <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                        <div class="d-table-cell align-middle">

                            <div class="text-center mt-4">
                                <h1 class="h2">Sign In Now</h1>
                                <p class="lead">
                                    Sign Up Your Account <a href="http://localhost:8080/SWR/signUp.jsp">Click here</a> 
                                </p>
                            </div>

                            <div class="card">
                                <div class="card-body">
                                    <div class="m-sm-4">

                                        <form>
                                            <div class="mb-3">
                                                <label class="form-label">Email</label>
                                                <input class="form-control form-control-lg" type="email" name="email" placeholder="Enter your email." />
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Password</label>
                                                <input class="form-control form-control-lg" type="password" name="password" placeholder="Enter your password." />
                                                <small>
                                                    <a href="pages-reset-password.html">Forgot password?</a>
                                                </small>
                                            </div>
                                            <div>
                                                <label class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="remember-me" name="remember-me" checked>
                                                    <span class="form-check-label">
                                                        Remember me !
                                                    </span>
                                                </label>
                                            </div>
                                            <div class="text-center mt-3">
                                                <a href="index.html" class="btn btn-lg btn-primary">Sign in</a>
                                                <!-- <button type="submit" class="btn btn-lg btn-primary">Sign in</button> -->
                                            </div>
                                            <div class="col-lg-12">
                                                <h6>Sign In with Social media</h6>
                                                <div class="d-flex">
                                                    <a class="btn flex-fill m-r5 facebook" href="#"><i class="fa fa-facebook"></i> Facebook</a>
                                                    <a class="btn flex-fill m-l5 google-plus" href="#"><i class="fa fa-google-plus"></i> Google</a>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </main>

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
