<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 4/29/22
  Time: 1:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="View Color" />
  </jsp:include>
  <style>
    body {
      background: ${color};
    }
  </style>

</head>

<body>
  <h3>Hey, your favorite color was: ${color}</h3>
</body>
</html>
