<%-- 
    Document   : CartCheckOut
    Created on : Jun 13, 2024, 11:00:18 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

	<link rel="canonical" href="pages-invoice.html" />

	<title>Invoice | AdminKit Demo</title>

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
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-120946860-10', { 'anonymize_ip': true });
</script></head>
<!--
  HOW TO USE: 
  data-theme: default (default), dark, light, colored
  data-layout: fluid (default), boxed
  data-sidebar-position: left (default), right
  data-sidebar-layout: default (default), compact
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cart Checkout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 60%;
            margin: auto;
            border: 1px solid #ccc;
            padding: 20px;
        }
        .header, .footer {
            text-align: center;
            margin: 20px 0;
        }
        .header img {
            width: 50px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #000;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #d3d3d3;
        }
        .order-summary {
            border: 1px solid #000;
            padding: 10px;
            margin-bottom: 20px;
        }
        .payment-method {
            width: 100%;
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .payment-method div {
            flex: 1;
            text-align: center;
            border: 1px solid #000;
            padding: 10px;
            background-color: #d3d3d3;
        }
        .payment-method div input {
            margin-left: 10px;
        }
        .submit-btn {
            text-align: center;
        }
        .submit-btn button {
            padding: 10px 20px;
            background-color: #A0522D;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <img src="logo.png" alt="Logo">
            <h1>Cart CheckOut</h1>
        </div>
        <div class="delivery-address">
            <p>
                <strong>Delivery Address</strong><br>
                Name: ...... (Phone number) Address:......... <a href="#">Change</a>
            </p>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Unit Price</th>
                    <th>Amount</th>
                    <th>Products Subtotal</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Image</td>
                    <td>1.000$</td>
                    <td>1</td>
                    <td>1.000$</td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td>2.000$</td>
                    <td>1</td>
                    <td>2.000$</td>
                </tr>
            </tbody>
        </table>
        <div class="order-summary">
            <p>Message for Sellers: ....................................................</p>
            <p>Ship: 30.000$</p>
        </div>
        <div class="order-summary">
            <p>Order Total: 33.000$</p>
        </div>
        <div class="payment-method">
            <div>
                <strong>Payment Method</strong>
            </div>
            <div>
                Cash on Delivery<input type="checkbox" name="paymentMethod" value="cod">
            </div>
            <div>
                Transfer<input type="checkbox" name="paymentMethod" value="transfer">
            </div>
            <div>
                Banking<input type="checkbox" name="paymentMethod" value="banking">
            </div>
            <div>
                Paypal<input type="checkbox" name="paymentMethod" value="paypal">
            </div>
        </div>
        <div class="submit-btn">
            <button type="submit">Buy</button>
        </div>
    </div>
</body>
</html>