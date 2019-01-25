
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Comments</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-container w3-center">
    <h2>Comments</h2>
</div>


<div class="w3-display-container w3-section" style="height:40%" >
    <table class="w3-table-all w3-display-middle" style="width:50%">

        <thead>
        <tr class="w3-teal">
            <th>Task Name</th>
            <th>Comment Text</th>
        </tr>
        </thead>
        <c:forEach var="comment" items="${comments}">
            <tr>
                <td><c:out value = "${comment.task.name}"/></td>
                <td><c:out value = "${comment.commentText}"/></td>
            </tr>

        </c:forEach>

    </table>
</div>

<%@include file="footer.jsp" %>

</body>
</html>
