<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 5/1/22
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body style="color: ${sessionScop['font-color']};
        background-color: ${sessionScope['bg-color']};">

    <!--NAV-->
    <jsp:include page="../partials/navbar.jsp"></jsp:include>

    <!--MAIN-->
    <div class="container d-flex flex-wrap justify-content-center">
        <c:forEach var="ad" items="${ads}">
            <div class="card w-25 mx-1 mb-3" style="color: ${sessionScope['font-color']};
                    background-color: ${sessionScope['bg-color']}">
                <div class="card-header">
                    ${ad.title}
                </div>
                <div class="card-body">
                    ${ad.description}
                </div>
                <div class="card-footer">
                    <button class="btn btn-primary btn-block w-100">Select</button>
                </div>
            </div>
        </c:forEach>
    </div>

<%--    Checking to see if we get the color name--%>
<%--<h1>Font Color Is <span>${sessionScope['font-color']}</span></h1>--%>
<%--<h1>Background Color Is <span>${sessionScope['bg-color']}</span></h1>--%>






</body>
</html>
