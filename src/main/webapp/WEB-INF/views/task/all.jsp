
<html>
<head>
    <title>All Tasks</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-container w3-center">
    <h2>All Task</h2>
</div>

<div class="w3-display-container w3-section">
    <table class="w3-table-all w3-display-middle" style="width:50%">
        <thead>
        <tr class="w3-teal w3-center">
            <th>Name</th>
            <th>Category</th>
            <th>Description</th>
            <th>Deadline</th>
            <th>Priority</th>
            <th>Ended (T/F)</th>
            <th>Created Date</th>
            <th>Updated Date</th>
            <th>Edit</th>
            <th>Remove</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="task" items="${allTasks}">
            <tr>
                <td>${task.name}</td>
                <br>
                <td>${task.category.name}</td>
                <br>
                <td>${task.description}</td>
                <br>
                <td>${task.deadline}</td>
                <br>
                <td>${task.priority}</td>
                <br>
                <td>${task.isActive}</td>
                <br>
                <td>${task.created}</td>
                <br>
                <td>${task.updated}</td>
                <br>
                <td>
                    <form action="edit/${task.id}" method="get">
                        <button class="w3-button w3-blue" type="submit">Edit</button>
                    </form>
                </td>
                <br>
                <td>
                    <form action="delete/${task.id}" method="post">
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
