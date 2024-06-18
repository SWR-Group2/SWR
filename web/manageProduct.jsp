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

        <title>Product Management | AdminKit Demo</title>

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
                        <button type="button" class="btn btn-primary mb-3" onclick="location.href = 'new-product.jsp'">New Product</button>
                        <div class="row">
                            <div class="card">
                                <div class="card-header">
                                    <div class="search-filter-group">
                                        <form class="d-none d-sm-inline-block">
                                            <div class="input-group input-group-navbar">
                                                <input type="text" class="form-control" placeholder="Search…" aria-label="Search">
                                                <button class="btn" type="button">
                                                    <i class="align-middle" data-feather="search"></i>
                                                </button>
                                            </div>
                                        </form>
                                        <select class="form-select" id="filterBy" onchange="filterProducts()">
                                            <option value="all">Filter By Category</option>
                                            <option value="Quần">Quần</option>
                                            <option value="Áo">Áo</option>
                                            <option value="Đồng hồ">Đồng hồ</option>
                                            <option value="Điện thoại">Điện thoại</option>
                                            <option value="Giày">Giày</option>
                                        </select>
                                    </div>
                                </div>

                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th><input type="checkbox" id="select-all"></th>
                                            <th>ID</th>
                                            <th>Product Name</th>
                                            <th>Product Type</th>
                                            <th>Quantity</th>
                                            <th>Unit Price</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="productTableBody">
                                        <tr data-product-type="Quần">
                                            <td><input type="checkbox" class="product-checkbox" value="1"></td>
                                            <td>1</td>
                                            <td>Quần suông ống rộng</td>
                                            <td>Quần</td>
                                            <td>100</td>
                                            <td>250</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" onclick="editProduct(1)">Edit</button>
                                                <button type="button" class="btn btn-danger" onclick="deleteProduct(1)">Delete</button>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Áo">
                                            <td><input type="checkbox" class="product-checkbox" value="2"></td>
                                            <td>2</td>
                                            <td>Áo Sơ Mi Tay Ngắn</td>
                                            <td>Áo</td>
                                            <td>106</td>
                                            <td>199</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" onclick="editProduct(2)">Edit</button>
                                                <button type="button" class="btn btn-danger" onclick="deleteProduct(2)">Delete</button>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Đồng hồ">
                                            <td><input type="checkbox" class="product-checkbox" value="3"></td>
                                            <td>3</td>
                                            <td>Đồng hồ Rolex</td>
                                            <td>Đồng hồ</td>
                                            <td>80</td>
                                            <td>1500</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" onclick="editProduct(3)">Edit</button>
                                                <button type="button" class="btn btn-danger" onclick="deleteProduct(3)">Delete</button>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Điện thoại">
                                            <td><input type="checkbox" class="product-checkbox" value="4"></td>
                                            <td>4</td>
                                            <td>Iphone 15 promax</td>
                                            <td>Điện thoại</td>
                                            <td>30</td>
                                            <td>670</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" onclick="editProduct(4)">Edit</button>
                                                <button type="button" class="btn btn-danger" onclick="deleteProduct(4)">Delete</button>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Giày">
                                            <td><input type="checkbox" class="product-checkbox" value="5"></td>
                                            <td>5</td>
                                            <td>Giày Nike</td>
                                            <td>Giày</td>
                                            <td>300</td>
                                            <td>19999</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" onclick="editProduct(5)">Edit</button>
                                                <button type="button" class="btn btn-danger" onclick="deleteProduct(5)">Delete</button>
                                            </td>
                                        </tr>
                                        <tr data-product-type="Giày">
                                            <td><input type="checkbox" class="product-checkbox" value="6"></td>
                                            <td>6</td>
                                            <td>Giày Adidas</td>
                                            <td>Giày</td>
                                            <td>57</td>
                                            <td>210</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" onclick="editProduct(6)">Edit</button>
                                                <button type="button" class="btn btn-danger" onclick="deleteProduct(6)">Delete</button>
                                            </td>
                                        </tr>
                                        <!-- Add other rows similarly -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
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
                                <img id="productImagePreview" src="img/default-product.png" alt="Product Image" class="img-thumbnail mb-2" style="max-width: 150px;">
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
                1: {name: 'Quần suông ống rộng', type: 'Quần', quantity: 100, price: '250', description: 'Quần suông ống rộng mô tả'},
                2: {name: 'Áo Sơ Mi Tay Ngắn', type: 'Áo', quantity: 106, price: '199', description: 'Áo Sơ Mi Tay Ngắn mô tả'},
                3: {name: 'Đồng hồ Rolex', type: 'Đồng hồ', quantity: 80, price: '1500', description: 'Đồng hồ Rolex mô tả'},
                4: {name: 'Iphone 15 promax', type: 'Điện thoại', quantity: 30, price: '670', description: 'Iphone 15 promax mô tả'},
                5: {name: 'Giày Nike', type: 'Giày', quantity: 300, price: '19999', description: 'Giày Nike mô tả'},
                6: {name: 'Giày Adidas', type: 'Giày', quantity: 57, price: '210', description: 'Giày Adidas mô tả'}
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
