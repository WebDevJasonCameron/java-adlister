<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %><%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 4/26/22
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    ArrayList<String>foods = new ArrayList<>();
    foods.add("Burger");
    foods.add("Hot Dogs");
    foods.add("Fries");
    foods.add("Slushy");
    foods.add("Pies");
    foods.add("Chili");
    foods.add("Corn Dog");
    foods.add("Pretzel");
    foods.add("Burger");

    request.setAttribute("foods", foods);
%>


<html>
<head>
    <title>Foods | Mini Ex</title>
</head>
<body>
    <h1>Food</h1>
    <ol>
            <c:forEach var="food" items="${foods}">
                    <li>${food}</li>
            </c:forEach>
    </ol>
    <ul>
        <c:forEach var="food" items="${foods}">

            <li>${food}</li>
        </c:forEach>
    </ul>

</body>
</html>
