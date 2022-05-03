<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 5/3/22
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <title>Hello</title>
<body>

    <c:forEach var="author" items="${authors}">
        <p>${author.author_name}</p>
    </c:forEach>

    <h2>Add an author to the database</h2>
    <form action="authors" method="post">
        <label for="author_name">Author Name:</label>
        <input type="text" name="author_name" id="author_name">
        <input type="submit" value="Submit">
    </form>

</body>
</html>
