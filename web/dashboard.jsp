<%-- 
    Document   : dashboard
    Created on : Jun 18, 2024, 9:07:07 AM
    Author     : thuat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <link rel="canonical" href="dashboard-ecommerce.html" />

        <title>Online Shopping System</title>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&amp;display=swap" rel="stylesheet">

        <!-- Choose your prefered color scheme -->
        <!-- <link href="css/light.css" rel="stylesheet"> -->
        <!-- <link href="css/dark.css" rel="stylesheet"> -->

        <!-- BEGIN SETTINGS -->
        <!-- Remove this after purchasing -->
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
        </script></head>
    <!--
      HOW TO USE: 
      data-theme: default (default), dark, light, colored
      data-layout: fluid (default), boxed
      data-sidebar-position: left (default), right
      data-sidebar-layout: default (default), compact
    -->

    <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-layout="default">
        <div class="wrapper">
            <%@include file="nav-bar.jsp" %>

            <div class="main">
                <%@include file="header2.jsp" %>

                <main class="content">
                    <div class="container-fluid p-0">

                        <div class="row mb-2 mb-xl-3">
                            <div class="col-auto d-none d-sm-block">
                                <h3><strong>SwrG2</strong> Dashboard</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col mt-0">
                                                <h5 class="card-title">Income</h5>
                                            </div>

                                            <div class="col-auto">
                                                <div class="stat text-primary">
                                                    <i class="align-middle" data-feather="dollar-sign"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <h1 class="mt-1 mb-3">$47.482</h1>
                                        <div class="mb-0">
                                            <span class="badge badge-success-light"> <i class="mdi mdi-arrow-bottom-right"></i> 3.65% </span>
                                            <span class="text-muted">Since last week</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col mt-0">
                                                <h5 class="card-title">Orders</h5>
                                            </div>

                                            <div class="col-auto">
                                                <div class="stat text-primary">
                                                    <i class="align-middle" data-feather="shopping-bag"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <h1 class="mt-1 mb-3">2.542</h1>
                                        <div class="mb-0">
                                            <span class="badge badge-danger-light"> <i class="mdi mdi-arrow-bottom-right"></i> -5.25% </span>
                                            <span class="text-muted">Since last week</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col mt-0">
                                                <h5 class="card-title">Activity</h5>
                                            </div>

                                            <div class="col-auto">
                                                <div class="stat text-primary">
                                                    <i class="align-middle" data-feather="activity"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <h1 class="mt-1 mb-3">16.300</h1>
                                        <div class="mb-0">
                                            <span class="badge badge-success-light"> <i class="mdi mdi-arrow-bottom-right"></i> 4.65% </span>
                                            <span class="text-muted">Since last week</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col mt-0">
                                                <h5 class="card-title">Revenue</h5>
                                            </div>

                                            <div class="col-auto">
                                                <div class="stat text-primary">
                                                    <i class="align-middle" data-feather="shopping-cart"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <h1 class="mt-1 mb-3">$20.120</h1>
                                        <div class="mb-0">
                                            <span class="badge badge-success-light"> <i class="mdi mdi-arrow-bottom-right"></i> 2.35% </span>
                                            <span class="text-muted">Since last week</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12 col-lg-8 d-flex">
                                <div class="card flex-fill w-100">
                                    <div class="card-header">
                                        <div class="float-end">
                                            <form class="row g-2">
                                                <div class="col-auto">
                                                    <select class="form-select form-select-sm bg-light border-0">
                                                        <option>Jan</option>
                                                        <option value="1">Feb</option>
                                                        <option value="2">Mar</option>
                                                        <option value="3">Apr</option>
                                                    </select>
                                                </div>
                                                <div class="col-auto">
                                                    <input type="text" class="form-control form-control-sm bg-light rounded-2 border-0" style="width: 100px;"
                                                           placeholder="Search..">
                                                </div>
                                            </form>
                                        </div>
                                        <h5 class="card-title mb-0">Total Revenue</h5>
                                    </div>
                                    <div class="card-body pt-2 pb-3">
                                        <div class="chart chart-md">
                                            <canvas id="chartjs-dashboard-line"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-4 d-flex">
                                <div class="card flex-fill w-100">
                                    <div class="card-header">
                                        <div class="float-end">
                                            <form class="row g-2">
                                                <div class="col-auto">
                                                    <select class="form-select form-select-sm bg-light border-0">
                                                        <option>Jan</option>
                                                        <option value="1">Feb</option>
                                                        <option value="2">Mar</option>
                                                        <option value="3">Apr</option>
                                                    </select>
                                                </div>
                                                <div class="col-auto">
                                                    <input type="text" class="form-control form-control-sm bg-light rounded-2 border-0" style="width: 100px;"
                                                           placeholder="Search..">
                                                </div>
                                            </form>
                                        </div>
                                        <h5 class="card-title mb-0">Sales by State</h5>
                                    </div>
                                    <div class="card-body px-4">
                                        <div id="usa_map" style="height:294px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12 col-lg-4 col-xxl-3 d-flex">
                                <div class="card flex-fill w-100">
                                    <div class="card-header">
                                        <div class="card-actions float-end">
                                            <div class="dropdown position-relative">
                                                <a href="#" data-bs-toggle="dropdown" data-bs-display="static">
                                                    <i class="align-middle" data-feather="more-horizontal"></i>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </div>
                                        </div>
                                        <h5 class="card-title mb-0">Sales/Revenue</h5>
                                    </div>
                                    <div class="card-body d-flex w-100">
                                        <div class="align-self-center chart chart-lg">
                                            <canvas id="chartjs-dashboard-bar"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-8 col-xxl-9 d-flex">
                                <div class="card flex-fill">
                                    <div class="card-header">
                                        <div class="card-actions float-end">
                                            <div class="dropdown position-relative">
                                                <a href="#" data-bs-toggle="dropdown" data-bs-display="static">
                                                    <i class="align-middle" data-feather="more-horizontal"></i>
                                                </a>

                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </div>
                                        </div>
                                        <h5 class="card-title mb-0">Top Selling Products</h5>
                                    </div>
                                    <table class="table table-borderless my-0">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th class="d-none d-xxl-table-cell">Manufacture</th>
                                                <th class="d-none d-xl-table-cell text-end">Orders</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0">
                                                            <div class="bg-light rounded-2">
                                                                <img class="p-2" src="img/product02.png" width="40px">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1 ms-3">
                                                            <strong>Headphone Vip</strong>
                                                            <div class="text-muted">
                                                                Sound
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="d-none d-xxl-table-cell">
                                                    <div class="text-muted">
                                                        Sony
                                                    </div>
                                                </td>
                                                <td class="d-none d-xl-table-cell text-end">
                                                   540
                                                </td>
                                                <td>
                                                    <span class="badge badge-success-light">In stock</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0">
                                                            <div class="bg-light rounded-2">
                                                                <img class="p-2" src="img/product03.png" width="40px">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1 ms-3">
                                                            <strong>Laptop Victus 16</strong>
                                                            <div class="text-muted">
                                                                Laptop
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="d-none d-xxl-table-cell">
                                                    <div class="text-muted">
                                                        Hp
                                                    </div>
                                                </td>
                                                <td class="d-none d-xl-table-cell text-end">
                                                    240
                                                </td>
                                                <td>
                                                    <span class="badge badge-success-light">In stock</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0">
                                                            <div class="bg-light rounded-2">
                                                                <img class="p-2" src="img/product04.png" width="40px">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1 ms-3">
                                                            <strong>Ipad Gen 9</strong>
                                                            <div class="text-muted">
                                                                Tablet
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="d-none d-xxl-table-cell">
                                                    <div class="text-muted">
                                                        Ipad
                                                    </div>
                                                </td>
                                                <td class="d-none d-xl-table-cell text-end">
                                                    180
                                                </td>
                                                <td>
                                                    <span class="badge badge-success-light">In stock</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="d-flex">
                                                        <div class="flex-shrink-0">
                                                            <div class="bg-light rounded-2">
                                                                <img class="p-2" src="img/product05.png" width="40px">
                                                            </div>
                                                        </div>
                                                        <div class="flex-grow-1 ms-3">
                                                            <strong>Headphone M123</strong>
                                                            <div class="text-muted">
                                                                Sound
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="d-none d-xxl-table-cell">
                                                    <div class="text-muted">
                                                        Samsung
                                                    </div>
                                                </td>
                                                <td class="d-none d-xl-table-cell text-end">
                                                    410
                                                </td>
                                                <td>
                                                    <span class="badge badge-danger-light">Out of stock</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
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
            document.addEventListener("DOMContentLoaded", function () {
                var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
                var gradientLight = ctx.createLinearGradient(0, 0, 0, 225);
                gradientLight.addColorStop(0, "rgba(215, 227, 244, 1)");
                gradientLight.addColorStop(1, "rgba(215, 227, 244, 0)");
                var gradientDark = ctx.createLinearGradient(0, 0, 0, 225);
                gradientDark.addColorStop(0, "rgba(51, 66, 84, 1)");
                gradientDark.addColorStop(1, "rgba(51, 66, 84, 0)");
                // Line chart
                new Chart(document.getElementById("chartjs-dashboard-line"), {
                    type: "line",
                    data: {
                        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                        datasets: [{
                                label: "Sales ($)",
                                fill: true,
                                backgroundColor: window.theme.id === "light" ? gradientLight : gradientDark,
                                borderColor: window.theme.primary,
                                data: [
                                    2115,
                                    1562,
                                    1584,
                                    1892,
                                    1587,
                                    1923,
                                    2566,
                                    2448,
                                    2805,
                                    3438,
                                    2917,
                                    3327
                                ]
                            }]
                    },
                    options: {
                        maintainAspectRatio: false,
                        legend: {
                            display: false
                        },
                        tooltips: {
                            intersect: false
                        },
                        hover: {
                            intersect: true
                        },
                        plugins: {
                            filler: {
                                propagate: false
                            }
                        },
                        scales: {
                            xAxes: [{
                                    reverse: true,
                                    gridLines: {
                                        color: "rgba(0,0,0,0.0)"
                                    }
                                }],
                            yAxes: [{
                                    ticks: {
                                        stepSize: 1000
                                    },
                                    display: true,
                                    borderDash: [3, 3],
                                    gridLines: {
                                        color: "rgba(0,0,0,0.0)",
                                        fontColor: "#fff"
                                    }
                                }]
                        }
                    }
                });
            });
        </script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                // Bar chart
                new Chart(document.getElementById("chartjs-dashboard-bar"), {
                    type: "bar",
                    data: {
                        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                        datasets: [{
                                label: "This year",
                                backgroundColor: window.theme.primary,
                                borderColor: window.theme.primary,
                                hoverBackgroundColor: window.theme.primary,
                                hoverBorderColor: window.theme.primary,
                                data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
                                barPercentage: .75,
                                categoryPercentage: .5
                            }]
                    },
                    options: {
                        maintainAspectRatio: false,
                        legend: {
                            display: false
                        },
                        scales: {
                            yAxes: [{
                                    gridLines: {
                                        display: false
                                    },
                                    stacked: false,
                                    ticks: {
                                        stepSize: 20
                                    }
                                }],
                            xAxes: [{
                                    stacked: false,
                                    gridLines: {
                                        color: "transparent"
                                    }
                                }]
                        }
                    }
                });
            });
        </script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var markers = [{
                        coords: [37.77, -122.41],
                        name: "San Francisco: 375"
                    },
                    {
                        coords: [40.71, -74.00],
                        name: "New York: 350"
                    },
                    {
                        coords: [39.09, -94.57],
                        name: "Kansas City: 250"
                    },
                    {
                        coords: [36.16, -115.13],
                        name: "Las Vegas: 275"
                    },
                    {
                        coords: [32.77, -96.79],
                        name: "Dallas: 225"
                    }
                ];
                var map = new jsVectorMap({
                    map: "us_aea_en",
                    selector: "#usa_map",
                    zoomButtons: true,
                    markers: markers,
                    markerStyle: {
                        initial: {
                            r: 9,
                            stroke: window.theme.white,
                            strokeWidth: 7,
                            stokeOpacity: .4,
                            fill: window.theme.primary
                        },
                        hover: {
                            fill: window.theme.primary,
                            stroke: window.theme.primary
                        }
                    },
                    regionStyle: {
                        initial: {
                            fill: window.theme["gray-200"]
                        }
                    },
                    zoomOnScroll: false
                });
                window.addEventListener("resize", () => {
                    map.updateSize();
                });
                setTimeout(function () {
                    map.updateSize();
                }, 250);
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
        </script></body>

</html>