<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 4/28/22
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Products</title>
</head>
<body>
<form action="Products" method="post">
    <label for="name">Name:</label>
    <input type="text" name="name" id="name"><br><br>
    <label for="price">Price:</label>
    <input type="text" name="price" id="price"><br><br>
    <input type="submit" value="Submit">
</form>
<c:forEach var="product" items="${products}">
    <div class="product">
        <h2>${product.name}</h2>
        <p>Price: $ ${product.price}</p>
    </div>
</c:forEach>

</body>
</html>
