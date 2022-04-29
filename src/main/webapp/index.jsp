<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Adlister!</h1>
        <br>
        <br>

        <ul class="list-group">
            <li class="list-group-item">
                <a href="http://localhost:8080/pizza-order" class="link-primary"
                   style="text-decoration: none">Pizza Order</a>
            </li>
            <li class="list-group-item">
                <a href="http://localhost:8080/pickcolor" class="link-primary"
                   style="text-decoration: none">Pick Color</a>
            </li>
        </ul>


    </div>
</body>
</html>
