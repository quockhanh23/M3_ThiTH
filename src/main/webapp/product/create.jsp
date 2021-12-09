<%--
  Created by IntelliJ IDEA.
  User: Asus VivoBook
  Date: 12/9/2021
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Create</h2>
<form method="post">
    <table style="text-align: left" cellpadding="5">
        <tr>
            <th>Name:</th>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <th>Price:</th>
            <td><input type="number" name="price"></td>
        </tr>
        <tr>
            <th>Quantity:</th>
            <td><input type="number" name="quantity"></td>
        </tr>
        <tr>
            <th>Color</th>
            <td><input type="text" name="color"></td>
        </tr>
        <tr>
            <th>Description</th>
            <td><input type="text" name="description"></td>
        </tr>
        <tr>
            <th>CategoryId</th>
            <td><input type="number" name="categoryId"></td>
        </tr>
<%--        <tr>--%>
<%--            <th>CategoryId:</th>--%>
<%--            <td>--%>
<%--                <select name="categoryId">--%>
<%--                    <option value="">-</option>--%>
<%--                    <c:forEach var="ct" items="${category1}">--%>
<%--                        <option value="${ct.id} ${ct.name}">${ct.id}. ${ct.name}</option>--%>
<%--                    </c:forEach>--%>
<%--                </select>ct--%>
            </td>
        </tr>
        <tr>

            <td>
                <button>Send</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
