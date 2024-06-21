<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    </head>
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

        .card {
            z-index: 0;
            background-color: #ECEFF1;
            padding-bottom: 20px;
            margin-top: 90px;
            margin-bottom: 90px;
            border-radius: 10px;
            width: 100%;
        }

        .top {
            padding-top: 40px;
            padding-left: 13% !important;
            padding-right: 13% !important;
        }
        body {
            color: #000;
            background-color: #FFFFFF; /* Changed background color to white */
            overflow-x: hidden;
            height: 100%;
            margin: 0;
        }

        .breadcrumb-header {
            margin-top: 20px; /* Adjusted top margin */
        }

        .section {
            padding: 40px 0; /* Added padding to top and bottom of sections */
        }

        .tabs {
            display: flex;
            cursor: pointer;
            margin-bottom: 20px;
        }

        .tab {
            padding: 10px 20px;
            background-color: #f0f0f0;
            border: 1px solid #ccc;
            margin-right: 5px;
        }

        .tab.active {
            background-color: #fff;
            border-bottom: none;
        }

        .tab-content {
            display: none;
            padding: 20px;
            border: 1px solid #ccc;
            margin-top: 20px;
        }

        .tab-content.active {
            display: block;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .table th,
        .table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
            vertical-align: middle;
        }

        .table th {
            background-color: #f2f2f2;
        }
        .table td {
            font-size: 14px;
        }

        .btn-primary {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-secondary {
            background-color: #6c757d;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn-secondary:hover {
            background-color: #545b62;
        }

        #progressbar {
            margin-bottom: 30px;
            overflow: hidden;
            color: #455A64;
            padding-left: 0px;
            margin-top: 30px;
            display: flex; /* Ensure the progress bar displays flex */
            justify-content: space-between;
        }

        #progressbar li {
            list-style-type: none;
            font-size: 13px;
            width: 25%; /* Ensure each step takes up 25% of the width */
            position: relative;
            font-weight: 400;
        }


        #progressbar .step0:before {
            font-family: FontAwesome;
            content: "\f10c";
            color: #fff;
        }

        #progressbar li:before {
            width: 40px;
            height: 40px;
            line-height: 45px;
            display: block;
            font-size: 20px;
            background: #C5CAE9;
            border-radius: 50%;
            margin: auto;
            padding: 0px;
        }

        #progressbar li:after {
            content: '';
            width: 100%;
            height: 12px;
            background: #C5CAE9;
            position: absolute;
            left: 0;
            top: 16px;
            z-index: -1;
        }

        #progressbar li:last-child:after {
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
            position: absolute;
            left: -50%;
        }

        #progressbar li:nth-child(2):after,
        #progressbar li:nth-child(3):after {
            left: -50%;
        }

        #progressbar li:first-child:after {
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
            position: absolute;
            left: 50%;
        }

        #progressbar li.active:before,
        #progressbar li.active:after {
            background: #651FFF;
        }

        #progressbar li.active:before {
            font-family: FontAwesome;
            content: "\f00c";
        }

        .icon-container {
            display: flex;
            justify-content: space-between;
        }

        .icon-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            width: 100%;
        }

        .icon {
            width: 60px;
            height: 60px;
            margin-bottom: 10px;
        }

        @media screen and (max-width: 992px) {
            .icon-content {
                width: 25%; /* Adjust for smaller screens */
            }
        }
        .top {
            padding-top: 40px;
            padding-left: 0% !important;
            padding-right: 0% !important;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .table td img {
            max-width: 100px;
            height: auto;
            display: block;
        }

        .summary {
            margin-top: 20px;
            text-align: right;
            width: 100%;
            max-width: 300px;
            margin-left: auto;
            margin-right: 0;
        }

        .btn-primary {
            margin-top: 10px;
        }

        .btn-success {
            margin-bottom: 10px;
        }
        select.form-control {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background: url('data:image/svg+xml;utf8,<svg fill="%23000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/></svg>') no-repeat right 10px center;
            background-color: white;
        }
        .form-control {
            max-width: 100%;
        }
        .row {
            margin-bottom: 15px;
        }
        .navbar-nav {
            display: flex;
            flex-direction: row;
            font-size: 14px;
        }
    </style>
    <body>
        <%@include file="header1.jsp"%>
        <%@include file ="navigation.jsp"%>
        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row" style="font-size: 18px">
                    <div class="col-md-12" style="font-size: 18px">
                        <h3 class="breadcrumb-header" style="font-size: 18px">My Order Detail</h3>
                        <ul class="breadcrumb-tree" style="font-size: 15px">
                            <li><a href="#">Home</a></li>
                            <li>My Order</li>
                            <li class="active">My Order Detail</li>
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
                <h1>My Order Details</h1>
                <div class="tabs" style="font-size: 18px;">
                    <div class="tab active" data-tab="delivery-details" style="font-size: 18px;">Delivery</div>
                    <div class="tab" data-tab="general-details" style="font-size: 18px;">General</div>
                    <div class="tab" data-tab="products-details" style="font-size: 18px;">Products</div>
                </div>
                <div class="tab-content active" id="delivery-details" style="font-size: 18px;">
                    <h2>Delivery Details</h2>
                    <div class="container px-1 px-md-4 py-2 mx-auto" style="font-size: 18px;">
                        <div class="card" style="font-size: 18px;">
                            <div class="row d-flex justify-content-between px-3 top" style="font-size: 18px;">
                                <div class="d-flex" style="font-size: 18px;">
                                    <h5 style="font-size: 18px;">ORDER <span class="text-primary font-weight-bold" style="font-size: 18px;">#T12224</span></h5>
                                </div>
                                <div class="d-flex flex-column text-sm-right" style="font-size: 18px;">
                                    <p class="mb-0" style="font-size: 18px;">Expected Arrival <span style="font-size: 18px;">01/12/24</span></p>
                                </div>
                            </div>
                            <div class="row d-flex justify-content-center" style="font-size: 18px;">
                                <div class="col-12" style="font-size: 18px;">
                                    <div class="progressbar-container" style="font-size: 18px;">
                                        <ul id="progressbar" class="d-flex justify-content-between text-center" style="font-size: 18px;">
                                            <li class="active step0" style="font-size: 18px;"></li>
                                            <li class="active step0" style="font-size: 18px;"></li>
                                            <li class="active step0" style="font-size: 18px;"></li>
                                            <li class="step0" style="font-size: 18px;"></li>
                                        </ul>
                                        <div class="icon-container d-flex justify-content-between" style="font-size: 18px;">
                                            <div class="d-flex flex-column align-items-center icon-content" style="font-size: 18px;">
                                                <img class="icon" src="img/orderProcessed.png" alt="Order Processed" style="font-size: 18px;">
                                                <p class="font-weight-bold mt-2" style="font-size: 18px;">Order<br>Processed</p>
                                            </div>
                                            <div class="d-flex flex-column align-items-center icon-content" style="font-size: 18px;">
                                                <img class="icon" src="img/orderShipped.png" alt="Order Shipped" style="font-size: 18px;">
                                                <p class="font-weight-bold mt-2" style="font-size: 18px;">Order<br>Shipped</p>
                                            </div>
                                            <div class="d-flex flex-column align-items-center icon-content" style="font-size: 18px;">
                                                <img class="icon" src="img/orderEnRoute.png" alt="Order En Route" style="font-size: 18px;">
                                                <p class="font-weight-bold mt-2" style="font-size: 18px;">Order<br>En Route</p>
                                            </div>
                                            <div class="d-flex flex-column align-items-center icon-content" style="font-size: 18px;">
                                                <img class="icon" src="img/orderArrived.png" alt="Order Arrived" style="font-size: 18px;">
                                                <p class="font-weight-bold mt-2" style="font-size: 18px;">Order<br>Arrived</p>
                                            </div>
                                        </div>
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
                                    <label for="full-name" style="font-size: 18px;">Full Name*</label>
                                    <input type="text" id="full-name" name="full-name" class="form-control" value="Đỗ Bá Thuật" style="font-size: 18px;">
                                </div>
                                <div class="col-md-6">
                                    <label for="city-province" style="font-size: 18px;">City/Province</label>
                                    <select id="city-province" name="city-province" class="form-control" style="font-size: 18px;">
                                        <option value="hanoi">Hà Nội</option>
                                        <!-- Other options can be added here -->
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="email" style="font-size: 18px;">Email*</label>
                                    <input type="email" id="email" name="email" class="form-control" value="Thuatnqb@fpt.edu.vn" style="font-size: 18px;">
                                </div>
                                <div class="col-md-6">
                                    <label for="phone-number" style="font-size: 18px;">Phone Number*</label>
                                    <input type="text" id="phone-number" name="phone-number" class="form-control" value="0123456789" style="font-size: 18px;">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="district" style="font-size: 18px;">District</label>
                                    <select id="district" name="district" class="form-control" style="font-size: 18px;">
                                        <option value="thachthat">Thạch Thất</option>
                                        <!-- Other options can be added here -->
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label for="wards" style="font-size: 18px;">Wards</label>
                                    <select id="wards" name="wards" class="form-control" style="font-size: 18px;">
                                        <option value="thachhoa">Thạch Hòa</option>
                                        <!-- Other options can be added here -->
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="address" style="font-size: 18px;">Address*</label>
                                    <input type="text" id="address" name="address" class="form-control" value="Số nhà 123, Đường quốc lộ 21, xã Thạch Hòa huyện Thạch Thất Thành Phố Hà Nội" style="font-size: 18px;">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary" style="font-size: 18px;">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="tab-content" id="products-details" style="font-size: 18px;">
                    <h2>Products Details</h2>
                    <div class="text-right mb-3">
                        <a href="#selectProductModal" class="btn btn-success" data-toggle="modal">
                            <i class="material-icons">&#xE147;</i> <span style="font-size: 18px;">Select more Product</span>
                        </a>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead class="thead-light">
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
                                    <td><img src="img/product06.png" alt="Laptop" class="product-image"></td>
                                    <td>
                                        <strong>Laptop Abx</strong><br>
                                        Category: Laptop<br>
                                        Available: 10
                                    </td>
                                    <td>
                                        <span style="color: red;">998.000₫</span><br>
                                        <span style="text-decoration: line-through;">2.090.000₫</span><br>
                                        -52%
                                    </td>
                                    <td><input type="number" value="1" min="1" style="font-size: 18px;"></td>
                                    <td>998.000₫</td>
                                    <td><button class="btn btn-danger cancel-btn" style="font-size: 18px;"><i class="material-icons" style="font-size: 18px;">&#xE872;</i></button></td>
                                </tr>
                                <tr>
                                    <td><img src="img/product07.png" alt="phone" class="product-image"></td>
                                    <td>
                                        <strong>Smartphone</strong><br>
                                        Category: Phone<br>
                                        Available: 8
                                    </td>
                                    <td>
                                        <span style="color: red;">606.620₫</span><br>
                                        <span style="text-decoration: line-through;">650.000₫</span><br>
                                        -7%
                                    </td>
                                    <td><input type="number" value="1" min="1" style="font-size: 18px;"></td>
                                    <td>606.620₫</td>
                                    <td><button class="btn btn-danger cancel-btn" style="font-size: 18px;"><i class="material-icons" style="font-size: 18px;">&#xE872;</i></button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="summary">
                        <p>Sub Total: 1.604.620₫</p>
                        <p>Shipping Fee: <span style="color: red;">+25.000₫</span></p>
                        <p><strong>Total: 1.629.620₫</strong></p>
                    </div>
                    <button class="btn btn-primary mt-3" style="font-size: 18px;">Online Payment</button>
                </div>
                <!-- Modal Structure -->
                <div id="selectProductModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="selectProductModalLabel" aria-hidden="true" style="font-size: 15px;">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="selectProductModalLabel" style="font-size: 15px;">Product Selection</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="font-size: 15px;">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-row mb-3">
                                    <div class="col-md-4">
                                        <select class="form-control" style="font-size: 15px;">
                                            <option>All Categories</option>
                                            <option value="laptop">Laptop</option>
                                            <option value="smartphone">Smartphone</option>
                                            <option value="tablet">Tablet</option>
                                            <option value="accessories">Accessories</option>
                                            <option value="software">Software</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Enter key word to search" style="font-size: 15px;">
                                    </div>
                                    <div class="col-md-2">
                                        <button class="btn btn-primary btn-block" style="font-size: 15px;">Search</button>
                                    </div>
                                </div>
                                <!-- Product List Table -->
                                <div class="table-responsive">
                                    <table class="table table-bordered" style="font-size: 15px;">
                                        <thead class="thead-light">
                                            <tr>
                                                <th><input type="checkbox" style="font-size: 15px;"></th>
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
                                                <td><input type="checkbox" checked style="font-size: 15px;"></td>
                                                <td>GD06</td>
                                                <td><img src="img/product06.png" alt="Laptop"></td>
                                                <td>
                                                    <strong>Laptop Abx</strong><br>
                                                    Category: Laptop<br>
                                                    Available: 10
                                                </td>
                                                <td>
                                                    <span style="color: red;">998.000₫</span><br>
                                                    <span style="text-decoration: line-through;">2.090.000₫</span><br>
                                                    -52%
                                                </td>
                                                <td><input type="number" value="1" min="1" style="font-size: 15px;"></td>
                                                <td>998.000₫</td>
                                            </tr>
                                            <tr>
                                                <td><input type="checkbox" checked style="font-size: 15px;"></td>
                                                <td>GD07</td>
                                                <td><img src="img/product07.png" alt="phone"></td>
                                                <td>
                                                    <strong>Smartphone</strong><br>
                                                    Category: Phone<br>
                                                    Available: 8
                                                </td>
                                                <td>
                                                    <span style="color: red;">606.620₫</span><br>
                                                    <span style="text-decoration: line-through;">650.000₫</span><br>
                                                    -7%
                                                </td>
                                                <td><input type="number" value="1" min="1" style="font-size: 15px;"></td>
                                                <td>606.620₫</td>
                                            </tr>
                                            <tr>
                                                <td><input type="checkbox" style="font-size: 15px;"></td>
                                                <td>GD08</td>
                                                <td><img src="path/to/image3.jpg" class="img-fluid product-image" alt="Product Image"></td>
                                                <td>
                                                    <strong class="m-0">IPad</strong><br>
                                                    Category: Table<br>
                                                    Available: 5
                                                </td>
                                                <td>
                                                    <p class="m-0"><span class="text-danger">2.745.000đ</span></p>
                                                    <small><del>3.050.000đ</del> -10%</small>
                                                </td>
                                                <td><input type="number" value="0" min="0" style="font-size: 15px;"></td>
                                                <td>0đ</td>
                                            </tr>   
                                            <!-- Additional rows similar to the above -->
                                        </tbody>
                                    </table>
                                </div>
                                <!-- Sub Total -->
                                <div class="text-right">
                                    <p class="mb-2" style="font-size: 15px;">Sub Total of Selected Product: <span class="font-weight-bold">1.604.620đ</span></p>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="font-size: 15px;">Cancel</button>
                                <button type="button" class="btn btn-success" style="font-size: 15px;">Add Selected Products</button>
                            </div>
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
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


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
    </body>
</html>
