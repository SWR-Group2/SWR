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

        <title>OSS - Manage Order</title>

        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
        <script src="js/settings.js"></script>
        <style>body {
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

            gtag('config', 'UA-120946860-10', {'anonymize_ip': true});
        </script>
    </head>
<body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
    <div class="wrapper">
        <%@include file="nav-bar.jsp" %>
        <div class="main">
            <%@include file="header2.jsp" %>
            <main class="content">
                <div class="container-fluid p-4">
                    <div class="row">
                        <div class="col-md-12">
                            <h3>Dashboard</h3>
                        </div>
                    </div>
                    <div class="row">
                        <!-- Order Counts Trend Chart -->
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Order Counts Trend (Last 7 Days)</h5>
                                    <canvas id="orderCountsChart"></canvas>
                                </div>
                            </div>
                        </div>
                        <!-- New Orders by Status -->
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">New Orders by Status</h5>
                                    <canvas id="ordersStatusChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- Revenue by Product Categories -->
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Revenue by Product Categories</h5>
                                    <canvas id="revenueCategoriesChart"></canvas>
                                </div>
                            </div>
                        </div>
                        <!-- Customer Statistics -->
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Customer Statistics</h5>
                                    <canvas id="customerStatsChart"></canvas>
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
    document.addEventListener("DOMContentLoaded", function() {
        // Data for charts (Example Data)
        const last7Days = ["Day 1", "Day 2", "Day 3", "Day 4", "Day 5", "Day 6", "Day 7"];
        const orderCountsData = [12, 19, 3, 5, 2, 3, 10];
        const ordersStatusData = [5, 9, 3, 2, 6];
        const revenueCategoriesData = [300, 50, 100, 40, 120];
        const customerStatsData = [5, 3];

        // Order Counts Trend Chart
        new Chart(document.getElementById('orderCountsChart'), {
            type: 'line',
            data: {
                labels: last7Days,
                datasets: [{
                    label: 'Orders',
                    data: orderCountsData,
                    borderColor: 'rgba(75, 192, 192, 1)',
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                }]
            }
        });

        // New Orders by Status Chart
        new Chart(document.getElementById('ordersStatusChart'), {
            type: 'bar',
            data: {
                labels: ["Submitted", "Verified", "Shipping", "Shipped", "Cancelled"],
                datasets: [{
                    label: 'Orders',
                    data: ordersStatusData,
                    backgroundColor: 'rgba(153, 102, 255, 0.2)',
                    borderColor: 'rgba(153, 102, 255, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        // Revenue by Product Categories Chart
        new Chart(document.getElementById('revenueCategoriesChart'), {
            type: 'pie',
            data: {
                labels: ["Laptop", "Tablet", "Sound", "Phone", "Other"],
                datasets: [{
                    label: 'Revenue',
                    data: revenueCategoriesData,
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)'
                    ],
                    borderWidth: 1
                }]
            }
        });

        // Customer Statistics Chart
        new Chart(document.getElementById('customerStatsChart'), {
            type: 'doughnut',
            data: {
                labels: ["Newly Registered", "Newly Bought"],
                datasets: [{
                    label: 'Customers',
                    data: customerStatsData,
                    backgroundColor: [
                        'rgba(255, 159, 64, 0.2)',
                        'rgba(255, 205, 86, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 159, 64, 1)',
                        'rgba(255, 205, 86, 1)'
                    ],
                    borderWidth: 1
                }]
            }
        });
    });
</script>
</body>
</html>
