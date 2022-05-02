<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile.</h1>

        <h2>${sessionScope.vUsername}</h2>

        <form action="/login" method="post">
            <input type="hidden" name="logout">
            <button>Logout</button>
        </form>

    </div>
</body>
</html>
