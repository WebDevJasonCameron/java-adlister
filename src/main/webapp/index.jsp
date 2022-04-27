<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "JSTL and JSP Mini Ex" %></title>
</head>
<body>

    <%
        String redirectURL = "http://localhost:8080/foods.jsp";
        response.sendRedirect(redirectURL);
    %>

</body>
</html>
