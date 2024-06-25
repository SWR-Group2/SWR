<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <title>OSS - Manage User</title>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>
            body {
                opacity: 0;
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

            gtag('config', 'UA-120946860-10', {
                'anonymize_ip': true
            });
        </script>
        <!-- Bootstrap CSS (necessary for the modal) -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
        <div class="wrapper">
            <%@include file="nav-bar.jsp" %>
            <div class="main">
                <%@include file="header2.jsp" %>
                <main class="content">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="flex">
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="productdetail" role="tabpanel">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title mb-0">Product Detail</h5>
                                                <div class="row mt-4">
                                                    <div class="row mb-3">
                                                        <div class="col-md-4">
                                                            <div style="text-align: center;">
                                                                <img id="productImagePreview" src="img/product02.png" alt="Product Image" class="img-thumbnail " style="max-width: 200px; display: block; margin-left: auto; margin-right: auto;">
                                                                <br>
                                                                <label for="productImage" class="form-label"><a href="#">Choose from...</a></label>
                                                                <input type="file" class="form-control d-none" id="productImage" accept="image/*" onchange="previewImage(event)">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-8">
                                                            <div class="mb-3">
                                                                <label for="productName" class="form-label">Product Name</label>
                                                                <input type="text" class="form-control" id="productName" required>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="col-md-6">
                                                                    <label for="productType" class="form-label">Category</label>
                                                                    <input type="text" class="form-control" id="productType" required>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label for="productPrice" class="form-label">Price</label>
                                                                    <input type="text" class="form-control" id="productPrice" required>
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="col-md-6">
                                                                    <label for="productStatus" class="form-label">Status</label>
                                                                    <select class="form-select" id="productStatus">
                                                                        <option value="in_stock">In Stock</option>
                                                                        <option value="out_of_stock">Out of Stock</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label for="productQuantity" class="form-label">Quantity</label>
                                                                    <input type="number" class="form-control" id="productQuantity" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 mb-3">
                                                        <label for="productDescription" class="form-label">Description</label>
                                                        <textarea class="form-control" id="productDescription" rows="3" required>Mô tả sản phẩm</textarea>
                                                    </div>
                                                    </form>
                                                </div>
                                                <button type="button" class="btn btn-primary me-2" onclick="saveProductDetails()">Save</button>
                                                <button type="button" class="btn btn-secondary" onclick="history.back()">Cancel</button>
                                            </div>
                                        </div>
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
                                                            // Redirect to the manage products page after saving
                                                            window.location.href = 'manage-products.jsp';
                                                        }

                                                        document.addEventListener("DOMContentLoaded", function () {
                                                            const productId = new URLSearchParams(window.location.search).get('id');
                                                            if (productId) {
                                                                // Fetch product details based on the productId
                                                                // This is an example, replace it with your actual logic to fetch details
                                                                const productDetails = {
                                                                    1: {name: 'Laptop Victus', type: 'Laptop', quantity: 100, price: '250,000VNĐ', description: ''},
                                                                    2: {name: 'Ipad Gen 9', type: 'Tablet', quantity: 106, price: '199,000VNĐ', description: ''},
                                                                    3: {name: 'Headphone Sony', type: 'Sound', quantity: 80, price: '1,500,000VNĐ', description: ''},
                                                                    4: {name: 'Iphone 15 promax', type: 'Phone', quantity: 30, price: '670,000VNĐ', description: ''},
                                                                    5: {name: 'Laptop Mixue', type: 'Laptop', quantity: 300, price: '19,999,000VNĐ', description: ''},
                                                                    6: {name: 'Samsung Galaxy s22', type: 'Phone', quantity: 57, price: '210,000VNĐ', description: ''}
                                                                };

                                                                const details = productDetails[productId];
                                                                document.getElementById('productName').value = details.name;
                                                                document.getElementById('productType').value = details.type;
                                                                document.getElementById('productQuantity').value = details.quantity;
                                                                document.getElementById('productPrice').value = details.price;
                                                                document.getElementById('productDescription').value = details.description;
                                                            }
                                                        });
        </script>
    </body>

</html>
