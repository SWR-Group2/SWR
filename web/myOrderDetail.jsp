
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

        <div class="container p-0">
            <h1>My Order Details</h1>
            <div class="tabs">
                <div class="tab active" data-tab="delivery-details">Delivery</div>
                <div class="tab" data-tab="general-details">General</div>
                <div class="tab" data-tab="products-details">Products</div>
            </div>
            <div class="tab-content active" id="delivery-details">
                <h2>Delivery Details</h2>
                <div class="container px-1 px-md-4 py-2 mx-auto">
                    <div class="card">
                        <div class="row d-flex justify-content-between px-3 top">
                            <div class="d-flex">
                                <h5>ORDER <span class="text-primary font-weight-bold">#T12224</span></h5>
                            </div>
                            <div class="d-flex flex-column text-sm-right">
                                <p class="mb-0">Expected Arrival <span>01/12/24</span></p>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-12">
                                <ul id="progressbar" class="text-center">
                                    <li class="active step0"></li>
                                    <li class="active step0"></li>
                                    <li class="active step0"></li>
                                    <li class="step0"></li>
                                </ul>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center top">
                            <div class="icon-container d-flex justify-content-between">
                                <div class="d-flex flex-column align-items-center icon-content">
                                    <img class="icon" src="https://i.imgur.com/9nnc9Et.png" alt="Order Processed">
                                    <p class="font-weight-bold mt-2">Order<br>Processed</p>
                                </div>
                                <div class="d-flex flex-column align-items-center icon-content">
                                    <img class="icon" src="https://i.imgur.com/u1AzR7w.png" alt="Order Shipped">
                                    <p class="font-weight-bold mt-2">Order<br>Shipped</p>
                                </div>
                                <div class="d-flex flex-column align-items-center icon-content">
                                    <img class="icon" src="https://i.imgur.com/TkPm63y.png" alt="Order En Route">
                                    <p class="font-weight-bold mt-2">Order<br>En Route</p>
                                </div>
                                <div class="d-flex flex-column align-items-center icon-content">
                                    <img class="icon" src="https://i.imgur.com/HdsziHP.png" alt="Order Arrived">
                                    <p class="font-weight-bold mt-2">Order<br>Arrived</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="tab-content" id="general-details">
                <h2>General Details</h2>
                <div class="container px-1 px-md-4 py-5 mx-auto">
                    <form>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="full-name">Full Name*</label>
                                <input type="text" id="full-name" name="full-name" class="form-control" value="Đỗ Bá Thuật">
                            </div>
                            <div class="col-md-6">
                                <label for="city-province">City/Province</label>
                                <select id="city-province" name="city-province" class="form-control">
                                    <option value="hanoi">Hà Nội</option>
                                    <!-- Other options can be added here -->
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="email">Email*</label>
                                <input type="email" id="email" name="email" class="form-control" value="Thuatnqb@fpt.edu.vn">
                            </div>
                            <div class="col-md-6">
                                <label for="phone-number">Phone Number*</label>
                                <input type="text" id="phone-number" name="phone-number" class="form-control" value="0123456789">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="district">District</label>
                                <select id="district" name="district" class="form-control">
                                    <option value="thachthat">Thạch Thất</option>
                                    <!-- Other options can be added here -->
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="wards">Wards</label>
                                <select id="wards" name="wards" class="form-control">
                                    <option value="thachhoa">Thạch Hòa</option>
                                    <!-- Other options can be added here -->
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label for="address">Address</label>
                                <input type="text" id="address" name="address" class="form-control" value="Số nhà 123, Đường quốc lộ 21, xã Thạch Hòa huyện Thạch Thất Thành Phố Hà Nội">
                            </div>
                        </div>
                        </br>
                        <div class="row">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="tab-content" id="products-details">
                <h2>Products Details</h2>
                <div class="text-right mb-3">
                    <a href="#selectProductModal" class="btn btn-success" data-toggle="modal">
                        <i class="material-icons">&#xE147;</i> <span>Select more Product</span>
                    </a>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Amount</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><img src="path/to/image1.jpg" alt="Nồi áp suất elmic"></td>
                            <td>
                                <strong>Nồi áp suất elmic</strong><br>
                                Category: Đồ gia dụng<br>
                                Available: 10
                            </td>
                            <td>
                                <span style="color: red;">998.000₫</span><br>
                                <span style="text-decoration: line-through;">2.090.000₫</span><br>
                                -52%
                            </td>
                            <td><input type="number" value="1" min="1"></td>
                            <td>998.000₫</td>
                            <td><button class="cancel-btn">Cancel</button></td>
                        </tr>
                        <tr>
                            <td><img src="path/to/image2.jpg" alt="Máy hút bụi không dây"></td>
                            <td>
                                <strong>Máy hút bụi không dây</strong><br>
                                Category: Đồ gia dụng<br>
                                Available: 8
                            </td>
                            <td>
                                <span style="color: red;">606.620₫</span><br>
                                <span style="text-decoration: line-through;">650.000₫</span><br>
                                -7%
                            </td>
                            <td><input type="number" value="1" min="1"></td>
                            <td>606.620₫</td>
                            <td><button class="cancel-btn">Cancel</button></td>
                        </tr>
                    </tbody>
                </table>
                <div class="summary">
                    <p>Sub Total: 1.604.620₫</p>
                    <p>Shipping Fee: <span style="color: red;">+25.000₫</span></p>
                    <p><strong>Total: 1.629.620₫</strong></p>
                </div>
                <button class="btn btn-primary mt-3">Check out</button>
            </div>
            <div class="modal fade" id="selectProductModal" tabindex="-1" role="dialog" aria-labelledby="selectProductModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="selectProductModalLabel">Product Selection</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <!-- Filter and Search Section -->
                            <div class="form-row mb-3">
                                <div class="col-md-4">
                                    <select class="form-control">
                                        <option>All Categories</option>
                                        <!-- Add more categories as options here -->
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" placeholder="Enter key word to search">
                                </div>
                                <div class="col-md-2">
                                    <button class="btn btn-primary btn-block">Search</button>
                                </div>
                            </div>
                            <!-- Product List Table -->
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="thead-light">
                                        <tr>
                                            <th><input type="checkbox"></th>
                                            <th>ProductID</th>
                                            <th>Image</th>
                                            <th>Product</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox" checked></td>
                                            <td>GD06</td>
                                            <td><img src="path/to/image1.jpg" class="img-fluid product-image" alt="Product Image"></td>
                                            <td>
                                                <p class="m-0">Nồi áp suất elmic</p>
                                                <small>Category: Đồ gia dụng</small><br>
                                                <small>Available: 10</small>
                                            </td>
                                            <td>
                                                <p class="m-0"><span class="text-danger">998.000đ</span></p>
                                                <small><del>2.090.000đ</del> -52%</small>
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" value="1">
                                            </td>
                                            <td>998.000đ</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" checked></td>
                                            <td>GD07</td>
                                            <td><img src="path/to/image2.jpg" class="img-fluid product-image" alt="Product Image"></td>
                                            <td>
                                                <p class="m-0">Máy hút bụi không dây</p>
                                                <small>Category: Đồ gia dụng</small><br>
                                                <small>Available: 8</small>
                                            </td>
                                            <td>
                                                <p class="m-0"><span class="text-danger">606.620đ</span></p>
                                                <small><del>650.000đ</del> -7%</small>
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" value="1">
                                            </td>
                                            <td>606.620đ</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox"></td>
                                            <td>GD08</td>
                                            <td><img src="path/to/image3.jpg" class="img-fluid product-image" alt="Product Image"></td>
                                            <td>
                                                <p class="m-0">Nồi cơm điện tử</p>
                                                <small>Category: Đồ gia dụng</small><br>
                                                <small>Available: 5</small>
                                            </td>
                                            <td>
                                                <p class="m-0"><span class="text-danger">2.745.000đ</span></p>
                                                <small><del>3.050.000đ</del> -10%</small>
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" value="0">
                                            </td>
                                            <td>0đ</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- Sub Total -->
                            <div class="text-right">
                                <p class="mb-2">Sub Total of Selected Product: <span class="font-weight-bold">1.604.620đ</span></p>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-success">Add Selected Products</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer1.jsp" %>
        <script src="js/app.js"></script>
        <script>
            document.querySelectorAll('.tab').forEach(tab => {
                tab.addEventListener('click', function () {
                    document.querySelectorAll('.tab').forEach(t => t.classList.remove('active'));
                    this.classList.add('active');
                    document.querySelectorAll('.tab-content').forEach(tc => tc.classList.remove('active'));
                    document.getElementById(this.dataset.tab).classList.add('active');
                });
            });
        </script>
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

        <!-- jQuery Plugins -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
