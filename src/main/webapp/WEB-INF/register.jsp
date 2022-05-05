<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Please Register</h1>
    <form action="/register" method="POST">
        <div class="form-group">`
            <label for="r-username">Username</label>
            <input id="r-username" name="r-username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="r-email">Email</label>
            <input id="r-email" name="r-email" class="form-control" type="email">
        </div>
        <div class="form-group">
            <label for="r-password">Password</label>
            <input id="r-password" name="r-password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>
