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

        <ul class="list-group mt-4">
            <li class="list-group-item">
                <a href="#" class="link-primary"
                   style="text-decoration: none">Ad</a>
            </li>
        </ul>
    </div>
</body>
</html>
