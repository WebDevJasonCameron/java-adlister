<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 4/29/22
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Guess" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <form method="post">
            <div class="card mt-4">
                <div class="car-header">
                    <p class="h3">Guess a Number (1, 2, 3)</p>
                </div>
                <div class="body">
                    <label for="num">Enter Number...</label>
                    <input type="text"
                           name="num"
                           class="form-control"
                           id="num">
                </div>
                <div class="card-footer">
                    <input type="submit" class="btn btn-primary btn-block w-100">
                </div>
            </div>

        </form>
    </div>

</body>
</html>
