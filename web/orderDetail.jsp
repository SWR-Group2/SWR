

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

        <title>Order Details</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>
            body {
                opacity: 0;
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
                padding: 20px;
                margin: 90px auto; /* Center the card */
                border-radius: 10px;
                max-width: 90%; /* Ensure the card fits within the viewport */
            }

            .top {
                padding-top: 40px;
                padding-left: 1%; /* Adjusted to fit smaller screens */
            }

            /* Icon progressbar */
            #progressbar {
                margin-bottom: 30px;
                overflow: hidden;
                color: #455A64;
                padding-left: 0;
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
                padding: 0;
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

            #progressbar li:nth-child(2):after, #progressbar li:nth-child(3):after {
                left: -50%;
            }

            #progressbar li:first-child:after {
                border-top-left-radius: 10px;
                border-bottom-left-radius: 10px;
                position: absolute;
                left: 50%;
            }

            /*Color number of the step and the connector before it*/
            #progressbar li.active:before, #progressbar li.active:after {
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
                width: 100%;
            }

            .mt-2 {
                margin-top: 8px;
            }

            @media screen and (max-width: 992px) {
                .icon-content {
                    width: 50%;
                }
            }
            .summary {
                text-align: right;
            }
            .quantity-input {
                max-width: 50px;
                text-align: center;
            }
            .table img{
                max-width: 80px;
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
            <%@include file="nav-bar.jsp" %>
            <div class="main">
                <%@include file="header2.jsp" %>
                <main class="content">
                    <div class="container p-0">
                        <h1 class="h3 mb-3">Order Detail</h1>
                        <div class="row">
                            <div class="tab">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item"><a class="nav-link active" href="#tab-1" data-bs-toggle="tab" role="tab">Delivery</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#tab-2" data-bs-toggle="tab" role="tab">General</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#tab-3" data-bs-toggle="tab" role="tab">Products</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab-1" role="tabpanel">
                                        <div class="container px-1 px-md-4 py-2 mx-auto">
                                            <div class="card">
                                                <div class="row d-flex justify-content-between px-3 top">
                                                    <div class="d-flex">
                                                        <h5>ORDER <span class="text-primary font-weight-bold">#ORD012224</span></h5>
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
                                    <div class="tab-pane" id="tab-2" role="tabpanel">
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
                                                    <label for="phone-number">Mobile*</label>
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
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="order-status">Order Status</label>
                                                    <div style="display: flex;justify-content: space-between " class="form-check">
                                                        <div><input class="form-check-input" type="radio" id="status-verified" name="order-status" value="verified">
                                                            <label for="status-verified">Verified</label>
                                                        </div>
                                                        <div>
                                                            <input class="form-check-input" type="radio" id="status-paid" name="order-status" value="paid">
                                                            <label for="status-paid">Paid</label>
                                                        </div>
                                                        <div><input class="form-check-input" type="radio" id="status-shipping" name="order-status" value="shipping" checked>
                                                            <label for="status-shipping">Shipping</label>
                                                        </div>
                                                        <div><input class="form-check-input" type="radio" id="status-shipped" name="order-status" value="shipped">
                                                            <label for="status-shipped">Shipped</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="note">Note</label>
                                                    <textarea id="note" name="note" class="form-control">Cần giao sớm trước 1/12/2024</textarea>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <button type="submit" class="btn btn-primary">Save</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane" id="tab-3" role="tabpanel">
                                        <a href="#selectProductModal" class="btn btn-pill btn-success float-right" style="font-size: 16px" data-toggle="modal">
                                            Select more Product
                                        </a>
                                        <table class="table table-striped table-hover">
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
                                                    <td>
                                                        <img src="img/product06.png" width="48" height="48" class="rounded-circle me-2" alt="Avatar"> 
                                                    </td>
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

                                                    <td>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <button class="btn btn-outline-secondary"type="button" id="button-minus1">-</button>
                                                            </div>
                                                            <input id="quantity1" type="text" value="1" min="1"  class="form-control quantity-input">
                                                            <div class="input-group-append">
                                                                <button class="btn btn-outline-secondary" type="button" id="button-plus1">+</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>998.000₫</td>
                                                    <td><a href="#"><i style="color: red;" data-feather="trash-2"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="img/product07.png" width="48" height="48" class="rounded-circle me-2" alt="Avatar"> 
                                                    </td>
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
                                                    <td>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <button class="btn btn-outline-secondary"type="button" id="button-minus2">-</button>
                                                            </div>
                                                            <input id="quantity2" type="text" value="1" min="1" class="form-control quantity-input">
                                                            <div class="input-group-append">
                                                                <button class="btn btn-outline-secondary" type="button" id="button-plus2">+</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>606.620₫</td>
                                                    <td><a href="#"><i style="color: red;" data-feather="trash-2"></i></a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="summary">
                                            <p>Sub Total: 1.604.620₫</p>
                                            <p>Shipping Fee: <span style="color: red;">+25.000₫</span></p>
                                            <p><strong>Sub Total: 1.629.620₫</strong></p>

                                        </div>
                                        <button class="btn btn-pill btn-success" style="width: 85px;">Save</button>
                                    </div>
                                </div>
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
                                            <div class="col-md-4" >
                                                <select class="form-select" style="font-size: 13px">
                                                    <option>All Categories</option>
                                                    <option value="laptop">Laptop</option>
                                                    <option value="smartphone">Smartphone</option>
                                                    <option value="tablet">Tablet</option>
                                                    <option value="accessories">Accessories</option>
                                                    <option value="software">Software</option>
                                                </select>
                                            </div>
                                            <div class="col-md-6">
                                                <input style="font-size: 13px" type="text" class="form-control" placeholder="Enter key word to search">
                                            </div>
                                            <div class="col-md-2">
                                                <button style="font-size: 13px;margin-top: 1px"  class="btn btn-primary btn-block">Search</button>
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
                                                        <td>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <button class="btn btn-outline-secondary"type="button" id="button-minus1">-</button>
                                                                </div>
                                                                <input id="quantity1" type="text" value="1" min="1" class="form-control quantity-input">
                                                                <div class="input-group-append">
                                                                    <button class="btn btn-outline-secondary" type="button" id="button-plus1">+</button>
                                                                </div>
                                                            </div>
                                                        </td>
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
                                                        <td>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <button class="btn btn-outline-secondary"type="button" id="button-minus2">-</button>
                                                                </div>
                                                                <input id="quantity2" type="text" value="1" min="0" class="form-control quantity-input">
                                                                <div class="input-group-append">
                                                                    <button class="btn btn-outline-secondary" type="button" id="button-plus2">+</button>
                                                                </div>
                                                            </div>
                                                        </td>
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
                                                        <td>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <button class="btn btn-outline-secondary"type="button" id="button-minus3">-</button>
                                                                </div>
                                                                <input id="quantity3" type="text" value="0" min="0" class="form-control quantity-input">
                                                                <div class="input-group-append">
                                                                    <button class="btn btn-outline-secondary" type="button" id="button-plus3">+</button>
                                                                </div>
                                                            </div>
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

            // Populate Edit User Modal with user data
            $('#editUserModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget); // Button that triggered the modal
                var id = button.data('id');
                var name = button.data('name');
                var email = button.data('email');
                var role = button.data('role');
                var status = button.data('status');

                var modal = $(this);
                modal.find('#editName').val(name);
                modal.find('#editEmail').val(email);
                modal.find('#editRole').val(role);
                modal.find('input[name="editStatus"][value="' + status + '"]').prop('checked', true);
            });
        </script>
        <script>
            // Select the elements for the first quantity input
            const quantityInput1 = document.getElementById('quantity1');
            const buttonPlus1 = document.getElementById('button-plus1');
            const buttonMinus1 = document.getElementById('button-minus1');

            // Select the elements for the second quantity input
            const quantityInput2 = document.getElementById('quantity2');
            const buttonPlus2 = document.getElementById('button-plus2');
            const buttonMinus2 = document.getElementById('button-minus2');

            // Function to update the first input value
            const updateQuantity1 = (operation) => {
                let currentValue = parseInt(quantityInput1.value);
                if (operation === 'plus') {
                    currentValue += 1;
                } else if (operation === 'minus' && currentValue > 1) {
                    currentValue -= 1;
                }
                quantityInput1.value = currentValue;
            };

            // Function to update the second input value
            const updateQuantity2 = (operation) => {
                let currentValue = parseInt(quantityInput2.value);
                if (operation === 'plus') {
                    currentValue += 1;
                } else if (operation === 'minus' && currentValue > 1) {
                    currentValue -= 1;
                }
                quantityInput2.value = currentValue;
            };

            // Add event listeners to the buttons for the first input
            buttonPlus1.addEventListener('click', () => updateQuantity1('plus'));
            buttonMinus1.addEventListener('click', () => updateQuantity1('minus'));

            // Add event listeners to the buttons for the second input
            buttonPlus2.addEventListener('click', () => updateQuantity2('plus'));
            buttonMinus2.addEventListener('click', () => updateQuantity2('minus'));
        </script>
    </body>
</html>
