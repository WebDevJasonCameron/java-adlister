<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 4/26/22
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%

    if(request.getMethod().equalsIgnoreCase("post")){
        String un = request.getParameter("username");
        String p = request.getParameter("password");

        if(request.getParameter("username").equals("admin")
            && request.getParameter("password").equals("password")){
                response.sendRedirect("http://localhost:8080/profile.jsp");
        } else {
            response.sendRedirect("http://localhost:8080/index.jsp");
        }
    }


%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form method="POST">
        <label for="username">Username: </label>
        <input type="text" name="username" id="username">
        <br><br>
        <label for="password">Password: </label>
        <input type="password" name="password" id="password">
        <br><br>
        <button type="submit">Submit</button>
    </form>

</body>
</html>
