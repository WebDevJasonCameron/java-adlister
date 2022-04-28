<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 4/28/22
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>

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
  <a href="http://localhost:8080/Products.jsp">DAO Lessons</a>
</div>
</body>
</html>
