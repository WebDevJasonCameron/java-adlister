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
        <jsp:param name="title" value="Incorrect Guess" />
    </jsp:include></head>
<body>
    <h1>Incorrect Guess</h1>
    <p>Your guess was ${num}, and the computer chose ${comp}</p>
</body>
</html>
