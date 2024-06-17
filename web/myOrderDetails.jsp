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
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <title>My Order Details</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>body {
                opacity: 0;
                color: #000;
                overflow-x: hidden;
                height: 100%;
                background-color: #8C9EFF;
                background-repeat: no-repeat;
                margin: 0;
                font-family: Arial, sans-serif;
            }

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

            /* Icon progressbar */
            #progressbar {
                margin-bottom: 30px;
                overflow: hidden;
                color: #455A64;
                padding-left: 0px;
                margin-top: 30px;
                display: flex;
                justify-content: space-between;
            }

            #progressbar li {
                list-style-type: none;
                font-size: 13px;
                width: 25%;
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

            /*ProgressBar connectors*/
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

            /*Color number of the step and the connector before it*/
            #progressbar li.active:before,
            #progressbar li.active:after {
                background: #651FFF;
            }

            #progressbar li.active:before {
                font-family: FontAwesome;
                content: "\f00c";
            }

            .icon {
                width: 60px;
                height: 60px;
                margin-right: 15px;
            }

            .icon-container {
                display: flex;
                width: 100%;
                justify-content: space-between;
            }

            .icon-content {
                display: flex;
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .mt-2 {
                margin-top: 8px;
            }

            @media screen and (max-width: 992px) {
                .icon-content {
                    width: 50%;
                }
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
            }

            .tab-content.active {
                display: block;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
            }

            table th,
            table td {
                border: 1px solid #ccc;
                padding: 10px;
                text-align: left;
                vertical-align: top;
            }

            table th {
                background-color: #f2f2f2;
            }

            table img {
                max-width: 100px;
                height: auto;
            }

            .summary {
                margin-top: 20px;
                text-align: right;
            }

            .summary p {
                margin: 5px 0;
            }

            button {
                padding: 10px 20px;
                background-color: #007bff;
                color: white;
                border: none;
                cursor: pointer;
            }

            button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
        <div class="wrapper">
            <%@ include file="nav-bar.jsp" %>
            <div class="main">
                <%@ include file="header2.jsp" %>
                <main class="content">
                    <div class="container-fluid p-0">
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
        </main>
    </div>
</div>


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
</body>

</html>
