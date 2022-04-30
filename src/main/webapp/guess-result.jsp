<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 4/29/22
  Time: 10:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Correct Guess" />
    </jsp:include></head>
<body>
    <div class="container">
        <c:if test="${result}">
            <h1 class="mt-4">Congratulations</h1>
            <h4>You Win!</h4>
        </c:if>
        <c:if test="${!result}">
            <h1 class="mt-4">To Bad</h1>
            <h4>You Lose...</h4>
        </c:if>
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
            <li class="list-group-item">
                <a href="http://localhost:8080/guess" class="link-primary"
                   style="text-decoration: none">Guesser</a>
            </li>
        </ul>
    </div>
</body>
</html>
