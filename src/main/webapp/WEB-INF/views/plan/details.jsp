<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Categories</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-container w3-center">
    <h2>Plan Details</h2>
</div>


<div class="w3-display-container w3-section" style="height:40%" >
    <table class="w3-table-all w3-display-middle" style="width:50%">

        <thead>
        <tr class="w3-teal">
            <th>Plan</th>
            <th>Category</th>
            <th>Task Name</th>
            <th>Description</th>
            <th>Deadline</th>
            <th>Priority</th>
            <th>Ended</th>
            <th>Show Comments</th>
        </tr>
        </thead>
        <c:forEach var="task" items="${tasks}">
            <tr>
                <td><c:out value = "${task.plan.name}"/></td>
                <td><c:out value = "${task.category.name}"/></td>
                <td><c:out value = "${task.name}"/></td>
                <td><c:out value = "${task.description}"/></td>
                <td><c:out value = "${task.deadline}"/></td>
                <td><c:out value = "${task.priority}"/></td>
                <td><c:out value = "${task.isActive}"/></td>
                <td>
                    <form action="/user/comment/showComments/${task.id}" method="get">
                        <button class="w3-button w3-teal" type="submit">Show Comments</button>
                    </form>
                </td>
            </tr>

        </c:forEach>

    </table>
</div>

<%@include file="footer.jsp" %>
</body>
</html>
