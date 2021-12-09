<%--
  Created by IntelliJ IDEA.
  User: Asus VivoBook
  Date: 12/9/2021
  Time: 10:34 AM
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
            background: #1b6d85;
            color: whitesmoke;
        }
    </style>
</head>
<body>
<h2>Edit</h2>
<form method="post">
    <table style="text-align: left" cellpadding="5">
        <tr>
            <th>Name:</th>
            <td><input id="1" type="text" name="name" onmouseout="changeColor2()" onmouseover="changeColor1()"  onfocus="this.value=''" value="${product.name}"></td>
        </tr>
        <tr>
            <th>price:</th>
            <td><input id="2" type="number" name="name"
                       onfocus="this.value=''" onmouseout="changeColor2()" onmouseover="changeColor1()" value="${product.price}"></td>
        </tr>
        <tr>
            <th>Quantity:</th>
            <td><input id="3" type="number" name="quantity" onmouseout="changeColor2()" onmouseover="changeColor1()"  onfocus="this.value=''" value="${product.quantity}"></td>
        </tr>
        <tr>
            <th>Color:</th>
            <td><input id="4" type="text" name="quantity" onmouseout="changeColor2()" onmouseover="changeColor1()"  onfocus="this.value=''" value="${product.color}"></td>
        </tr>
        <tr>
            <th>Description:</th>
            <td><input id="5"type="text" name="quantity" onmouseout="changeColor2()" onmouseover="changeColor1()"  onfocus="this.value=''" value="${product.description}"></td>
        </tr>
        <tr>
        <th>Category:</th>
        <td><input id="6" type="text" name="quantity" onmouseover="changeColor1()" onmouseout="changeColor2()"  onfocus="this.value=''"value="${product.categoryId}"></td>
    </tr>
    </table>
</form>
</body>
</html>
<script>
    function changeColor1() {
        document.getElementById('1').style.background = "yellow";
        document.getElementById('2').style.background = "yellow";
        document.getElementById('3').style.background = "yellow";
        document.getElementById('4').style.background = "yellow";
        document.getElementById('5').style.background = "yellow";
        document.getElementById('6').style.background = "yellow";
    }

    function changeColor2() {
        document.getElementById('1').style.background = "#ffffff";
        document.getElementById('2').style.background = "#ffffff";
        document.getElementById('3').style.background = "#ffffff";
        document.getElementById('4').style.background = "#ffffff";
        document.getElementById('5').style.background = "#ffffff";
        document.getElementById('6').style.background = "#ffffff";
    }
</script>
