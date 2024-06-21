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

        <title>Online Shopping System</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>body {
                opacity: 0;
            }</style>
        <style>
            .table th, .table td {
                vertical-align: middle;
                text-align: center;
            }
            .form-group label {
                font-weight: bold;
            }
            .custom-checkbox, .custom-radio {
                padding: 0;
                margin: 0;
            }
            .order-summary {
                font-weight: bold;
                text-align: right;
            }
            .order-summary .price {
                color: red;
            }
            .product-image {
                width: 100px;
            }
            .remove-product {
                color: red;
                cursor: pointer;
            }
            .form-control {
                border-radius: 0;
            }
            select.form-control {
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
                background: url('data:image/svg+xml;utf8,<svg fill="%23000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/></svg>') no-repeat right 10px center;
                background-color: white;
            }
            .form-check-label {
                margin-left: 5px;
            }
            .submit-btn {
                float: left;
            }
            .cancel-btn {
                color: #fff;
                background-color: #dc3545;
                border-color: #dc3545;
                border-radius: 0.25rem;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            .cancel-btn:hover {
                background-color: #c82333;
                border-color: #bd2130;
            }
            img {
                width: 100px;
                height: auto; /* Ensure images keep their aspect ratio */
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
        <div class="wrapper">
            <%@ include file="nav-bar.jsp" %>
            <div class="main">
                <%@ include file="header2.jsp"%>
                <main class="content">
                    <div class="container-fluid p-0" style="margin: 20px;">
                        <div class="row">
                            <div class="card">
                                <div class="card-header">
                                    <h1 class="h3 mb-3">New Order</h1>
                                </div>
                                <div class="text-right mb-3">
                                    <a href="#selectProductModal" class="btn btn-pill btn-success float-right" data-toggle="modal">
                                        Select more Product
                                    </a>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
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
                                                <td><input type="number" value="1" min="1"></td>
                                                <td>998.000₫</td>
                                                <td><i class="align-middle" data-feather="trash-2" style="color: red;"></i></td>
                                            </tr>
                                            <tr>
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
                                                <td><input type="number" value="1" min="1"></td>
                                                <td>606.620₫</td>
                                                <td><i class="align-middle" data-feather="trash-2" style="color: red;"></i></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <form>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="fullName">Full Name*</label>
                                            <input type="text" class="form-control" id="fullName" value="Đỗ Bá Thuật">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="cityProvince">City/Province</label>
                                            <input type="text" class="form-control" id="cityProvince" value="Hà Nội">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="email">Email*</label>
                                            <input type="email" class="form-control" id="email" value="Thuatnqb@fpt.edu.vn">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="phoneNumber">Phone Number*</label>
                                            <input type="text" class="form-control" id="phoneNumber" value="0123456789">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="district">District</label>
                                            <input type="text" class="form-control" id="district" value="Thạch Thất">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="wards">Wards</label>
                                            <input type="text" class="form-control" id="wards" value="Thạch Hòa">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label>Delivery Status*</label>
                                            <select id="Delivery status" class="form-control">
                                                <option value="processing">Processing</option>
                                                <option value="shipped">Shipped</option>
                                                <option value="enroute">En Route</option>
                                                <option value="arrived">Arrived</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="orderStatus">Order Status*</label>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="orderStatus" id="
                                                       orderStatus1" value="Verified" checked>
                                                <label class="form-check-label" for="orderStatus1">Verified</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="orderStatus" id="orderStatus2" value="Paid">
                                                <label class="form-check-label" for="orderStatus2">Paid</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="orderStatus" id="orderStatus3" value="Shipped">
                                                <label class="form-check-label" for="orderStatus3">Shipped</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="orderStatus" id="orderStatus4" value="Shipping">
                                                <label class="form-check-label" for="orderStatus4">Shipping</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="paymentMethod">Payment Method*</label>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="paymentMethod" id="paymentMethod1" value="Cash Payment">
                                                <label class="form-check-label" for="paymentMethod1">Cash On Delivery</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="paymentMethod" id="paymentMethod2" value="Bank Transfer">
                                                <label class="form-check-label" for="paymentMethod2">Bank Transfer</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" type="radio" name="paymentMethod" id="paymentMethod3" value="Internet Banking" checked>
                                                <label class="form-check-label" for="paymentMethod3">Internet Banking</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="address">Address*</label>
                                        <input type="text" class="form-control" id="address" value="Số nhà 123, Đường quốc lộ 21, xã Thạch Hòa, huyện Thạch Thất, Thành Phố Hà Nội">
                                    </div>
                                    <div class="form-group">
                                        <label for="deliveryNote">Delivery Note</label>
                                        <textarea class="form-control" id="deliveryNote" rows="3">Cần giao sớm trước 1/12/2024</textarea>
                                    </div>
                                    <div class="order-summary mt-4">
                                        <p>Sub Total: <span>1.604.620đ</span></p>
                                        <p>Shipping Fee: <span class="price">+25.000đ</span></p>
                                        <p class="order-summary">Sub Total: <span>1.629.620đ</span></p>
                                    </div>
                                    <div class="form-group text-md-start">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </main>
                <%@ include file="footer2.jsp"%>

            </div>

        </div>


        <!-- Select Product Modal -->
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
                                    <option value="laptop">Laptop</option>
                                    <option value="smartphone">Smartphone</option>
                                    <option value="tablet">Tablet</option>
                                    <option value="accessories">Accessories</option>
                                    <option value="software">Software</option>
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
                                        <td><input type="number" value="1" min="1"></td>
                                        <td>998.000₫</td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" checked></td>
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
                                        <td><input type="number" value="1" min="1"></td>
                                        <td>606.620₫</td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox"></td>
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
                                        <td><input type="number" value="0" min="0"></td>
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
        <script src="js/app.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
