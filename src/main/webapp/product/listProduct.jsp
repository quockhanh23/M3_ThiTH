<%--
  Created by IntelliJ IDEA.
  User: Asus VivoBook
  Date: 12/9/2021
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background: #1b6d85;
            color: whitesmoke;
        }
    </style>
</head>
<body>
<form action="/products">
    <input type="text" name="key">
    <button>Find Name Product</button>
</form>
<h3><a href="/products?action=create">Create</a></h3>
<c:forEach var="i" begin="0" end="${list.size()-1}">
   <h2> ${list.get(i).id}, ${list.get(i).name}, ${list.get(i).price},
    ${list.get(i).quantity},  ${list.get(i).color}, ${list.get(i).description},
    ${category.get(i).name}</h2>
    <a href="/products?action=edit&id=${list.get(i).id}">Edit</a>
    <a href="/products?action=delete&id=${list.get(i).id}">delete</a>
</c:forEach>
</body>
</html>
