<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <link rel="stylesheet" href="css/light.css">
    <style>
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
        }
        .table td, .table th {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        .table th {
            background-color: #f2f2f2;
        }
        .btn {
            display: block;
            width: 100px;
            margin: 20px auto;
            padding: 10px;
            background-color: #007bff;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .product-image {
            text-align: center;
        }
        .product-image img {
            width: 200px;
            height: 200px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Products Detail</h1>
        <div class="product-image">
            <img src="<c:out value='${param.image}'/>" alt="Product Image">
        </div>
        <table class="table">
            <tr>
                <th>Product Name</th>
                <td><c:out value="${param.name}"/></td>
            </tr>
            <tr>
                <th>Status</th>
                <td><c:out value="${param.status}"/></td>
            </tr>
            <tr>
                <th>ID</th>
                <td><c:out value="${param.id}"/></td>
            </tr>
            <tr>
                <th>Price($)</th>
                <td><c:out value="${param.price}"/></td>
            </tr>
            <tr>
                <th>Stock Quantity</th>
                <td><c:out value="${param.quantity}"/></td>
            </tr>
            <tr>
                <th>Category</th>
                <td><c:out value="${param.category}"/></td>
            </tr>
            <tr>
                <th>Description</th>
                <td><c:out value="${param.description}"/></td>
            </tr>
        </table>
        <a href="editProduct.jsp?id=<c:out value='${param.id}'/>" class="btn">Edit</a>
    </div>
</body>
</html>