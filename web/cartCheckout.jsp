<%-- 
    Document   : cartCheckout
    Created on : Jun 17, 2024, 8:59:04 PM
    Author     : thuat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Online Shopping System</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <%@include file="header1.jsp"%>
        <%@include file="navigation.jsp"%>
        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="breadcrumb-header">Checkout</h3>
                        <ul class="breadcrumb-tree">
                            <li><a href="#">Home</a></li>
                            <li class="active">Checkout</li>
                        </ul>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /BREADCRUMB -->

        <!-- SECTION -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">

                    <div class="col-md-7">
                        <!-- Shipping Details -->
                        <div class="billing-details">
                            <div class="section-title">
                                <h3 class="title">Shipping address</h3>
                            </div>
                            <div class="form-group">
                                <label>Name*</label>
                                <input class="input" type="text" name="first-name" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <label>Email*</label>
                                <input class="input" type="email" name="email" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label>Mobile*</label>
                                <input class="input" type="mobile" name="mobile" placeholder="Mobile">
                            </div>
                            <div class="form-group">
                                <label>City</label>
                                <select class="form-select" style="height: 40px; padding: 0px 15px; border: 1px solid #E4E7ED; background-color: #FFF; width: 100%;">
                                    <option class="active">Hà Nam</option>
                                    <option>Hà Nội</option>
                                    <option>Tp HCM</option>
                                    <option>Đà Nẵng</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>District</label>
                                <select class="form-select" style="height: 40px; padding: 0px 15px; border: 1px solid #E4E7ED; background-color: #FFF; width: 100%;">
                                    <option class="active">Lý Nhân</option>
                                    <option>Thanh Liêm</option>
                                    <option>Phủ Lý</option>
                                    <option>Bình Lục</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Wards</label>
                                <select class="form-select" style="height: 40px; padding: 0px 15px; border: 1px solid #E4E7ED; background-color: #FFF; width: 100%;">
                                    <option class="active">Hợp Lý</option>
                                    <option>Đức Lý</option>
                                    <option>Đạo Lý</option>
                                    <option>Công Lý</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input class="input" type="text" name="address" placeholder="Address">
                            </div>
                        </div>
                        <!-- /Shipping Details -->
                        <!-- Order notes -->
                        <div class="order-notes">
                            <label>Delivery Notes</label>
                            <textarea class="input" placeholder="Order Notes"></textarea>
                        </div>
                        <!-- /Order notes -->
                    </div>

                    <!-- Order Details -->
                    <div class="col-md-5 order-details">
                        <div class="section-title text-center">
                            <h3 class="title">Your Order</h3>
                        </div>
                        <div class="order-summary">
                            <div class="order-col">
                                <div><strong>PRODUCT</strong></div>
                                <div><strong>TOTAL</strong></div>
                            </div>
                            <div class="order-products">
                                <div class="order-col">
                                    <div>1x Laptop Hp Victus 16</div>
                                    <div>15.000.000đ</div>
                                </div>
                                <div class="order-col">
                                    <div>2x Headphone Sony RTX3030</div>
                                    <div>1.000.000đ</div>
                                </div>
                            </div>
                            <div class="order-col">
                                <div>Shiping</div>
                                <div><strong>30.000vnd</strong></div>
                            </div>
                            <div class="order-col">
                                <div><strong>TOTAL</strong></div>
                                <div><strong class="order-total">17.030.000đ</strong></div>
                            </div>
                        </div>
                        <div class="payment-method">
                            <div class="input-radio">
                                <input type="radio" name="payment" id="payment-1">
                                <label for="payment-1">
                                    <span></span>
                                    Cash on Delivery(COD)
                                </label>
                                <div class="caption">
                                    <p>Service provides Cash on Delivery collection for shipments that ensures packages are delivered to the recipient and payments are secured for the seller.</p>
                                </div>
                            </div>
                            <div class="input-radio">
                                <input type="radio" name="payment" id="payment-2">
                                <label for="payment-2">
                                    <span></span>
                                    Bank Transter
                                </label>
                                <div class="caption">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </div>
                            <div class="input-radio">
                                <input type="radio" name="payment" id="payment-3">
                                <label for="payment-3">
                                    <span></span>
                                    Internet Banking
                                </label>
                                <div class="caption">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </div>
                        </div>
                        <div class="input-checkbox">
                            <input type="checkbox" id="terms">
                            <label for="terms">
                                <span></span>
                                I've read and accept the <a href="#">terms & conditions</a>
                            </label>
                        </div>
                        <a href="homepage.jsp" class="primary-btn order-submit">Submit</a>
                    </div>
                    <!-- /Order Details -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->

        <!-- NEWSLETTER -->
        <div id="newsletter" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="newsletter">
                            <p>Sign Up for the <strong>NEWSLETTER</strong></p>
                            <form>
                                <input class="input" type="email" placeholder="Enter Your Email">
                                <button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
                            </form>
                            <ul class="newsletter-follow">
                                <li>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /NEWSLETTER -->

        <%@include file="footer1.jsp" %>

        <!-- jQuery Plugins -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
