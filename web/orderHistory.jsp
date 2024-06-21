<%-- 
    Document   : cartCheckout
    Created on : Jun 17, 2024, 8:59:04 PM
    Author     : thuat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Online Shopping System</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">


        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="header1.jsp"%>
        <%@include file="navigation.jsp"%>
        <!-- BREADCRUMB -->
        <div id="breadcrumb" class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="breadcrumb-header">Order History</h3>
                        <ul class="breadcrumb-tree">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li class="active">Order History</li>
                        </ul>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /BREADCRUMB -->

        <div class="section">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group col-md-6">
                                    <label>Filter by Status</label>
                                    <select class="form-select" style="height: 40px; padding: 0px 15px; border: 1px solid #E4E7ED; background-color: #FFF; width: 100%;">
                                        <option class="active" value="all">All Statuses</option>
                                        <option value="processing">Processing</option>
                                        <option value="shipped">Shipped</option>
                                        <option value="delivered">Delivered</option>
                                        <option value="pending">Pending</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Search</label>
                                    <input class="input" type="text" name="search" placeholder="Search">
                                </div>

                                <table class="table table-striped mt-3" id="order-table" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Ordered Date</th>
                                            <th>Total Amount</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>#ORD1237</td>
                                            <td>2024-06-10 10:30 AM</td>
                                            <td>$150.00</td>
                                            <td>Processing</td>
                                            <td>
                                                <a href="myOrderDetails.jsp" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-edit"></i></a>
                                                <button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>#ORD1236</td>
                                            <td>2024-06-09 09:45 AM</td>
                                            <td>$80.00</td>
                                            <td>Shipped</td>
                                            <td>
                                                <a href="myOrderDetails.jsp" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-edit"></i></a>
                                                <button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>#ORD1235</td>
                                            <td>2024-06-10 10:30 AM</td>
                                            <td>$15.00</td>
                                            <td>Delivered</td>
                                            <td>
                                                <a href="myOrderDetails.jsp" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-edit"></i></a>
                                                <button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>#ORD1234</td>
                                            <td>2024-06-10 10:30 AM</td>
                                            <td>$300.00</td>
                                            <td>Pending</td>
                                            <td>
                                                <a href="myOrderDetails.jsp" class="btn btn-primary btn-sm"><i class="glyphicon glyphicon-edit"></i></a>
                                                <button class="btn btn-danger btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <nav>
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">...</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <%@include file="footer1.jsp" %>

        <!-- jQuery Plugins -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
