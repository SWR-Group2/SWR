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
    </style>
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-120946860-10"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-120946860-10', { 'anonymize_ip': true });
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
                    <!-- Thêm nút "New Product" -->
                    <button type="button" class="btn btn-primary mb-3" onclick="location.href='new-product.jsp'">New Product</button>
                    <!-- Thêm nút "Delete Selected" -->
                    <button type="button" class="btn btn-danger mb-3" onclick="deleteProducts()">Delete</button>
                    <div class="row">
                        <div class="card">
                            <div class="card-header">
                                <form class="d-none d-sm-inline-block">
                                    <div class="input-group input-group-navbar">
                                        <input type="text" class="form-control" placeholder="Search…" aria-label="Search">
                                        <button class="btn" type="button">
                                            <i class="align-middle" data-feather="search"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>

                            <table class="table">
                                <thead>
                                    <tr>
                                        <!-- Checkbox để chọn tất cả các sản phẩm -->
                                        <th><input type="checkbox" id="select-all"></th>
                                        <th>ID</th>
                                        <th>Product Name</th>
                                        <th>Product Type</th>
                                        <th>Quantity</th>
                                        <th>Unit Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><input type="checkbox" class="product-checkbox" value="1"></td>
                                        <td>1</td>
                                        <td><a href="#" class="product-name">Quần suông ống rộng</a></td>
                                        <td>Quần</td>
                                        <td>100</td>
                                        <td>250</td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="product-checkbox" value="2"></td>
                                        <td>2</td>
                                        <td><a href="#" class="product-name">Áo Sơ Mi Tay Ngắn</a></td>
                                        <td>Áo</td>
                                        <td>106</td>
                                        <td>199</td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="product-checkbox" value="3"></td>
                                        <td>3</td>
                                        <td><a href="#" class="product-name">Đồng hồ Rolex</a></td>
                                        <td>Đồng hồ</td>
                                        <td>80</td>
                                        <td>1500</td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="product-checkbox" value="4"></td>
                                        <td>4</td>
                                        <td><a href="#" class="product-name">Iphone 15 promax</a></td>
                                        <td>Điện thoại</td>
                                        <td>30</td>
                                        <td>670</td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="product-checkbox" value="5"></td>
                                        <td>5</td>
                                        <td><a href="#" class="product-name">Giày Nike</a></td>
                                        <td>Giày</td>
                                        <td>300</td>
                                        <td>19999</td>
                                    </tr>
                                    <tr>
                                        <td><input type="checkbox" class="product-checkbox" value="6"></td>
                                        <td>6</td>
                                        <td><a href="#" class="product-name">Giày Adidas</a></td>
                                        <td>Giày</td>
                                        <td>57</td>
                                        <td>210</td>
                                    </tr>
                                    <!-- Thêm các hàng khác tương tự -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
            <%@ include file="footer2.jsp" %>
        </div>
    </div>

    <!-- Modal Chi tiết Sản phẩm -->
    <div class="modal fade" id="productDetailModal" tabindex="-1" role="dialog" aria-labelledby="productDetailModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="productDetailModalLabel">Product Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p><strong>ID:</strong> <span id="productDetailID"></span></p>
                    <p><strong>Product Name:</strong> <span id="productDetailName"></span></p>
                    <p><strong>Product Type:</strong> <span id="productDetailType"></span></p>
                    <p><strong>Quantity:</strong> <span id="productDetailQuantity"></span></p>
                    <p><strong>Unit Price:</strong> <span id="productDetailPrice"></span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script src="js/app.js"></script>

    <script>
        document.getElementById('select-all').addEventListener('change', function() {
            let checkboxes = document.querySelectorAll('.product-checkbox');
            for (let checkbox of checkboxes) {
                checkbox.checked = this.checked;
            }
        });

        // Xử lý sự kiện khi click vào tên sản phẩm
        document.querySelectorAll('.product-name').forEach(item => {
            item.addEventListener('click', function(event) {
                event.preventDefault();
                
                // Lấy thông tin sản phẩm từ hàng của bảng
                let row = this.closest('tr');
                let id = row.querySelector('td:nth-child(2)').innerText;
                let name = row.querySelector('td:nth-child(3)').innerText;
                let type = row.querySelector('td:nth-child(4)').innerText;
                let quantity = row.querySelector('td:nth-child(5)').innerText;
                let price = row.querySelector('td:nth-child(6)').innerText;
                
                // Hiển thị thông tin trong modal
                document.getElementById('productDetailID').innerText = id;
                document.getElementById('productDetailName').innerText = name;
                document.getElementById('productDetailType').innerText = type;
                document.getElementById('productDetailQuantity').innerText = quantity;
                document.getElementById('productDetailPrice').innerText = price;
                
                // Hiển thị modal
                $('#productDetailModal').modal('show');
            });
        });

        function deleteProducts() {
            let selected = [];
            let checkboxes = document.querySelectorAll('.product-checkbox:checked
            for (let checkbox of checkboxes) {
                selected.push(checkbox.value);
            }

            if (selected.length === 0) {
                alert("No products selected!");
                return;
            }

            if (confirm("Are you sure you want to delete the selected products?")) {
                fetch('delete-selected-products.jsp', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ ids: selected })
                })
                .then(response => response.text())
                .then(result => {
                    if (result.trim() === "Success") {
                        alert("Products deleted successfully!");
                        location.reload(); // Tải lại trang sau khi xóa
                    } else {
                        alert("Failed to delete the products: " + result);
                    }
                })
                .catch(error => {
                    alert("An error occurred: " + error);
                });
            }
        }
    </script>
</body>

</html>