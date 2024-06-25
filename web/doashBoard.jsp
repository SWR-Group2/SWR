<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.css">
    <style>
        /* Add your custom styles here */
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <h1 class="text-center my-5">Admin Dashboard</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 mb-4">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title mb-0">Monthly Sales</h5>
                    </div>
                    <div class="card-body">
                        <canvas id="chartjs-dashboard-line" height="300"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mb-4">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title mb-0">Monthly Revenue</h5>
                    </div>
                    <div class="card-body">
                        <canvas id="chartjs-dashboard-bar" height="300"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-8 mb-4">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title mb-0">Recent Orders</h5>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Customer Name</th>
                                        <th>Status</th>
                                        <th>Amount</th>
                                        <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#SK2540</td>
                                        <td>Neal Matthews</td>
                                        <td><span class="badge bg-success">Approved</span></td>
                                        <td>$400</td>
                                        <td>07 Oct, 2020</td>
                                    </tr>
                                    <tr>
                                        <td>#SK2541</td>
                                        <td>Jamal Burnett</td>
                                        <td><span class="badge bg-warning">Pending</span></td>
                                        <td>$380</td>
                                        <td>07 Oct, 2020</td>
                                    </tr>
                                    <tr>
                                        <td>#SK2542</td>
                                        <td>Juan Mitchell</td>
                                        <td><span class="badge bg-success">Approved</span></td>
                                        <td>$384</td>
                                        <td>06 Oct, 2020</td>
                                    </tr>
                                    <tr>
                                        <td>#SK2543</td>
                                        <td>Barry Dick</td>
                                        <td><span class="badge bg-danger">Rejected</span></td>
                                        <td>$412</td>
                                        <td>05 Oct, 2020</td>
                                    </tr>
                                    <tr>
                                        <td>#SK2544</td>
                                        <td>Ron Carran</td>
                                        <td><span class="badge bg-success">Approved</span></td>
                                        <td>$404</td>
                                        <td>04 Oct, 2020</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title mb-0">Customers</h5>
                    </div>
                    <div class="card-body">
                        <canvas id="chartjs-dashboard-pie" height="300"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Line chart
            var ctxLine = document.getElementById("chartjs-dashboard-line").getContext("2d");
            var gradientLine = ctxLine.createLinearGradient(0, 0, 0, 225);
            gradientLine.addColorStop(0, "rgba(215, 227, 244, 1)");
            gradientLine.addColorStop(1, "rgba(215, 227, 244, 0)");

            new Chart(ctxLine, {
                type: "line",
                data: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    datasets: [{
                        label: "Sales ($)",
                        fill: true,
                        backgroundColor: gradientLine,
                        borderColor: "rgba(66, 165, 245, 1)",
                        data: [2115, 1562, 1584, 1892, 1587, 1923, 2566, 2448, 2805, 3438, 2917, 3327]
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                stepSize: 500
                            }
                        }
                    }
                }
            });

            // Bar chart
            var ctxBar = document.getElementById("chartjs-dashboard-bar").getContext("2d");
            new Chart(ctxBar, {
                type: "bar",
                data: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    datasets: [{
                        label: "Revenue ($)",
                        backgroundColor: "rgba(255, 99, 132, 0.2)",
                        borderColor: "rgba(255, 99, 132, 1)",
                        borderWidth: 1,
                        data: [4000, 3200, 2500, 3000, 2800, 3500, 3700, 4200, 3900, 4300, 3800, 4100]
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                stepSize: 500
                            }
                        }
                    }
                }
            });

            // Pie chart
            var ctxPie = document.getElementById("chartjs-dashboard-pie").getContext("2d");
            new Chart(ctxPie, {
                type: "pie",
                data: {
                    labels: ["New Customers", "Returning Customers"],
                    datasets: [{
                        label: "Customers",
                        data: [70, 30],
                        backgroundColor: ["rgba(255, 159, 64, 0.2)", "rgba(75, 192, 192, 0.2)"],
                        borderColor: ["rgba(255, 159, 64, 1)", "rgba(75, 192, 192, 1)"],
                        borderWidth: 1
                    }]
                },
                options: {
                    maintainAspectRatio: false
                }
            });
        });
    </script>
</body>
</html>
