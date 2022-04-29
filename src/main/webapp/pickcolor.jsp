<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 4/29/22
  Time: 1:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Pick Color" />
    </jsp:include>
</head>
<body>
<div class="container mt-4">
    <form action="viewcolor.jsp" method="post">
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <p class="h3">Color Picker</p>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="color-choice">Enter Your Favorite Color</label>
                        <input type="text" class="form-control" id="color-choice">
                    </div>
                </div>
                <div class="card-footer">
                    <button class="btn btn-primary btn-block w-100">Submit</button>
                </div>
            </div>

        </div>
    </form>
</div>

</body>
</html>
