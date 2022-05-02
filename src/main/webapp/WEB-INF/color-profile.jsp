<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 5/2/22
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Color Profile" />
    </jsp:include></head>
<body>
<h1>Color Profile Form</h1>
<form action="/color-profile" method="post">
    <input type="color" name="font-color" id="font-color">
    <label for="font-color">Font Color</label><br>
    <input type="color" name="bg-color" id="bg-color">
    <label for="bg-color">Background Color</label><br>
    <button>Submit</button>
</form>
<form action="/color-profile" method="post">
    <input type="hidden" name="forget">
    <button>Forget Color Pref</button>
</form>
</body>
</html>
