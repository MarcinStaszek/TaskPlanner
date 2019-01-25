
<html>
<head>
    <title>Comments</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-container w3-center">
    <h2>All Comments</h2>
</div>

<div class="w3-display-container w3-section">
    <table class="w3-table-all w3-display-middle" style="width:50%">
        <thead>
        <tr class="w3-teal w3-center">
            <th>Task Name</th>
            <th>Comment text</th>
            <th>User</th>
            <th>Created Date</th>
            <th>Edit</th>
            <th>Remove</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="comment" items="${allComments}">
            <tr>
                <td>${comment.task.name}</td>
                <br>
                <td>${comment.commentText}</td>
                <br>
                <td>${comment.user.login}</td>
                <br>
                <td>${comment.created}</td>
                <br>
                <td>
                    <form action="edit/${comment.id}" method="get">
                        <button class="w3-button w3-blue" type="submit">Edit</button>
                    </form>
                </td>
                <br>
                <td>
                    <form action="delete/${comment.id}" method="post">
                       <button class="w3-button w3-red" type="submit">Remove</button>
                    </form>
                </td>
                <br>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="footer.jsp" %>

</body>
</html>
