<%-- 
    Document   : cart
    Created on : Jun 17, 2024, 9:36:04 PM
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

        <title>Electro - HTML Ecommerce Template</title>

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
                        <h3 class="breadcrumb-header">Shopping Cart</h3>
                        <ul class="breadcrumb-tree">
                            <li><a href="#">Home</a></li>
                            <li class="active">Cart</li>
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

                    <div class="col-md-12">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Select</th>
                                    <th scope="col">Picture</th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
                                            <label class="custom-control-label" for="customCheck1">1</label>
                                        </div>
                                    </td>
                                    <td>
                                        <img src="./img/product03.png" alt="" width="70px">
                                    </td>
                                    <td><h3 class="product-name"><a href="publicProduct.jsp" style="text-transform: uppercase">Laptop Hp Victus 16</a></h3>
                                        <a>Category: Laptop; Available: 14</a></td>
                                    <td>15.000.000đ</td>
                                    <td><input value="1"></td>
                                    <td>15.000.000đ</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
                                            <label class="custom-control-label" for="customCheck1">2</label>
                                        </div>
                                    </td>
                                    <td>
                                        <img src="./img/product02.png" alt="" width="70px">
                                    </td>
                                    <td><h3 class="product-name"><a href="publicProduct.jsp" style="text-transform: uppercase">Headphone Sony RTX3030</a></h3>
                                        <a>Category: Headphone; Available: 4</a></td>
                                    <td>1.000.000đ</td>
                                    <td><input value="2"></td>
                                    <td>2.000.000đ</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">3</label>
                                        </div>
                                    </td>
                                    <td>
                                        <img src="./img/product04.png" alt="" width="70px">
                                    </td>
                                    <td><h3 class="product-name"><a href="publicProduct.jsp" style="text-transform: uppercase">Ipad Gen 9 64gb</a></h3>
                                        <a>Category: Table; Available: 23</a></td>
                                    <td>9.000.000đ</td>
                                    <td><input value="1"></td>
                                    <td>9.000.000đ</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                    <div class="col-md-10">
                        <a href="homepage.jsp" class="primary-btn order-submit">Save to Cart</a>
                        <a href="cartCheckout.jsp" class="primary-btn order-submit">Checkout</a>
                    </div>
                    <div class="col-md-2">
                        <div class="order-col">
                            <div><strong>TOTAL</strong></div>
                            <div><strong class="order-total" style="color: #518BE1;">19.000.000đ</strong></div>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /SECTION -->

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
