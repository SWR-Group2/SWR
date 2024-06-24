<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Responsive Admin & Dashboard Template based on Bootstrap 5">
        <meta name="author" content="AdminKit">
        <meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="shortcut icon" href="img/icons/icon-48x48.png" />
        <link rel="canonical" href="tables-bootstrap.html" />

        <title>OSS - Manage Product</title>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>
            body {
                opacity: 0;
            }
            .search-filter-group {
                display: flex;
                align-items: center;
                width:600px;
            }
            .search-filter-group .input-group-navbar {
                margin-right: 300px;
            }
        </style>
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
                <%@ include file="header2.jsp" %>

                <main class="content">
                    <div class="container-fluid p-0">
                        <h1 class="h3 mb-3">Manage Products</h1>

                        <div class="row">
                            <div class="card">
                                <div class="card-header">
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <select class="form-control" id="filterRole">
                                                <option value="">All Category</option>
                                                <option value="admin">Laptop</option>
                                                <option value="user">Table</option>
                                                <option value="guest">Sound</option>
                                            </select>
                                        </div>
                                    </form>
                                    <form class="d-inline-block">
                                        <div class="input-group input-group-navbar">
                                            <input type="text" class="form-control" placeholder="Search…" aria-label="Search" id="searchInput">
                                            <button class="btn" type="button" id="searchButton">
                                                <i class="align-middle" data-feather="search"></i>
                                            </button>
                                        </div>
                                    </form>
                                    <button type="button" class="btn btn-square btn-success float-right" onclick="location.href = 'new-product.jsp'">New Product</button>
                                </div>

                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th><input type="checkbox" id="select-all"></th>
                                            <th>ID</th>
                                            <th>Product Name</th>
                                            <th>Category</th>
                                            <th>Quantity</th>
                                            <th>Unit Price</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="productTableBody">
                                        <tr data-product-type="Quần">
                                            <td><input type="checkbox" class="product-checkbox" value="1"></td>
                                            <td>1</td>
                                            <td>Laptop Victus</td>
                                            <td>Laptop</td>
                                            <td>100</td>
                                            <td>250</td>
                                            <td>
                                                <a onclick="editProduct(1)" data-toggle="modal" data-status="active"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(1)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Áo">
                                            <td><input type="checkbox" class="product-checkbox" value="2"></td>
                                            <td>2</td>
                                            <td>Ipad Gen 9</td>
                                            <td>Tablet</td>
                                            <td>106</td>
                                            <td>199</td>
                                            <td>
                                                <a onclick="editProduct(2)" data-toggle="modal" data-status="active"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(2)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Đồng hồ">
                                            <td><input type="checkbox" class="product-checkbox" value="3"></td>
                                            <td>3</td>
                                            <td>Headphone Sony</td>
                                            <td>Sound</td>
                                            <td>80</td>
                                            <td>1500</td>
                                            <td>
                                                <a onclick="editProduct(3)" data-toggle="modal" data-status="active"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(3)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Điện thoại">
                                            <td><input type="checkbox" class="product-checkbox" value="4"></td>
                                            <td>4</td>
                                            <td>Iphone 15 promax</td>
                                            <td>Phone</td>
                                            <td>30</td>
                                            <td>670</td>
                                            <td>
                                                <a onclick="editProduct(4)" data-toggle="modal" data-status="active"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(4)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Giày">
                                            <td><input type="checkbox" class="product-checkbox" value="5"></td>
                                            <td>5</td>
                                            <td>Laptop Mixue</td>
                                            <td>Laptop</td>
                                            <td>300</td>
                                            <td>19999</td>
                                            <td>
                                                <a onclick="editProduct(5)" data-toggle="modal" data-status="active"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(5)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Giày">
                                            <td><input type="checkbox" class="product-checkbox" value="6"></td>
                                            <td>6</td>
                                            <td>Samsung Galaxy s22</td>
                                            <td>Phone</td>
                                            <td>57</td>
                                            <td>210</td>
                                            <td>
                                                <a onclick="editProduct(6)" data-toggle="modal" data-status="active"><i class="align-middle" data-feather="eye"></i></a>
                                                <a onclick="deleteProduct(6)" data-toggle="modal" data-status="active"><i class="align-middle" style="color: red;" data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        <!-- Add other rows similarly -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-sm">
                            <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-left"></i></a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
                        </ul>
                    </nav>
                </main>
                <%@ include file="footer2.jsp" %>
            </div>
        </div>

        <!-- Product Detail Modal -->
        <div class="modal fade" id="productDetailModal" tabindex="-1" aria-labelledby="productDetailModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="productDetailModalLabel">Product Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="productDetailForm">
                            <div class="mb-3 text-center">
                                <img id="productImagePreview" src="img/product02.png" alt="Product Image" class="img-thumbnail mb-2" style="max-width: 150px;">
                                <br>
                                <label for="productImage" class="form-label"><a href="#">Choose from...</a></label>
                                <input type="file" class="form-control d-none" id="productImage" accept="image/*" onchange="previewImage(event)">
                            </div>
                            <div class="mb-3">
                                <label for="productName" class="form-label">Product Name</label>
                                <input type="text" class="form-control" id="productName" required>
                            </div>
                            <div class="mb-3">
                                <label for="productType" class="form-label">Category</label>
                                <input type="text" class="form-control" id="productType" required>
                            </div>
                            <div class="mb-3">
                                <label for="productPrice" class="form-label">Price</label>
                                <input type="text" class="form-control" id="productPrice" required>
                            </div>
                            <div class="mb-3">
                                <label for="productStatus" class="form-label">Status</label>
                                <select class="form-select" id="productStatus">
                                    <option value="in_stock">In Stock</option>
                                    <option value="out_of_stock">Out of Stock</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="productQuantity" class="form-label">Quantity</label>
                                <input type="number" class="form-control" id="productQuantity" required>
                            </div>
                            <div class="mb-3">
                                <label for="productDescription" class="form-label">Description</label>
                                <textarea class="form-control" id="productDescription" rows="3" required>Mô tả sản phẩm</textarea>
                            </div>
                            <div class="d-flex justify-content-end">
                                <button type="button" class="btn btn-primary me-2" onclick="saveProductDetails()">Save</button>
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function previewImage(event) {
                const reader = new FileReader();
                reader.onload = function () {
                    const output = document.getElementById('productImagePreview');
                    output.src = reader.result;
                };
                reader.readAsDataURL(event.target.files[0]);
            }

            function saveProductDetails() {
                // Perform your save operation here
                // Close the modal after saving
                $('#productDetailModal').modal('hide');
            }

            function filterProducts() {
                const filter = document.getElementById('filterBy').value;
                const rows = document.querySelectorAll('#productTableBody tr');

                rows.forEach(row => {
                    const type = row.getAttribute('data-product-type');
                    if (filter === 'all' || type === filter) {
                        row.style.display = '';
                    } else {
                        row.style.display = 'none';
                    }
                });
            }
        </script>

        <script src="js/app.js"></script>
        <script>
            // Function to edit product
            function editProduct(productId) {
                const productDetails = {
                    1: {name: 'Laptop Victus', type: 'Laptop', quantity: 100, price: '250', description: 'Product Detail: description about product'},
                    2: {name: 'Ipad Gen 9', type: 'Tablet', quantity: 106, price: '199', description: 'Product Detail: description about product'},
                    3: {name: 'Headphone Sony', type: 'Sound', quantity: 80, price: '1500', description: 'Product Detail: description about product'},
                    4: {name: 'Iphone 15 promax', type: 'Phone', quantity: 30, price: '670', description: 'Product Detail: description about product'},
                    5: {name: 'Laptop Mixue', type: 'Laptop', quantity: 300, price: '19999', description: 'Product Detail: description about product'},
                    6: {name: 'Samsung Galaxy s22', type: 'Phone', quantity: 57, price: '210', description: 'Product Detail: description about product'}
                };

                const details = productDetails[productId];
                document.getElementById('productName').value = details.name;
                document.getElementById('productType').value = details.type;
                document.getElementById('productQuantity').value = details.quantity;
                document.getElementById('productPrice').value = details.price;
                document.getElementById('productDescription').value = details.description;

                $('#productDetailModal').modal('show');
            }

            // Function to save product details
            function saveProductDetails() {
                // Perform your save operation here
                // Close the modal after saving
                $('#productDetailModal').modal('hide');
            }
        </script>
    </body>

</html>
