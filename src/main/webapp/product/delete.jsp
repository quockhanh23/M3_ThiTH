<%--
  Created by IntelliJ IDEA.
  User: Asus VivoBook
  Date: 12/9/2021
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
    <style>
        button {
            background: #0f3b62;
            color: whitesmoke;
            border: none;
            font-size: 25px;
            border-radius: 5px;
            margin-top: 10px;
            transition: 0.3s;
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        button:hover {
            transform: scale(1.2);
        }

        body {
            background: #e7e7e7;
            color: black;
        }
    </style>
</head>
<body>
<div align="center">
    <form method="post">
        <div id="1">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Id product</th>
                    <td>${delete.id}</td>
                </tr>
                <tr>
                    <th>Product name</th>
                    <td>${delete.name}</td>
                </tr>
                <tr>
                    <th>Product price</th>
                    <td>${delete.price}</td>
                </tr>
                <tr>
                    <th>Product description</th>
                    <td>${delete.description}</td>
                </tr>
                <tr>
                    <th>Category id</th>
                    <td>${delete.categoryId}</td>
                </tr>
                <tr>
                    <th>Quantity</th>
                    <td>${delete.quantity}</td>
                </tr>
            </table>
        </div>
        <button>Delete</button>
        <button><a style="text-decoration: none; color: whitesmoke" href="/products">Back to list product</a></button>
    </form>
</div>
</form>
</body>
</html>
