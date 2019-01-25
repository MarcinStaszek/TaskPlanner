
<html>
<head>
    <title>Plans</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-container w3-center">
    <h2>All Plans</h2>
</div>

<div class="w3-display-container w3-section">
    <table class="w3-table-all w3-display-middle" style="width:50%">
        <thead>
        <tr class="w3-teal w3-center">
            <th>Details</th>
            <th>Name</th>
            <th>Description</th>
            <th>Progress Comment</th>
            <th>Created Date</th>
            <th>Updated Date</th>
            <th>Edit</th>
            <th>Remove</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="plan" items="${allPlans}">
            <tr>
                <td>
                    <form action="details/${plan.id}" method="get">
                        <button class="w3-button w3-teal" type="submit">Show datails</button>
                    </form>
                </td>
                <td>${plan.name}</td>
                <br>
                <td>${plan.description}</td>
                <br>
                <td>${plan.progressComment}</td>
                <br>
                <td>${plan.created}</td>
                <br>
                <td>${plan.updated}</td>
                <br>
                <td>
                    <form action="edit/${plan.id}" method="get">
                        <button class="w3-button w3-blue" type="submit">Edit</button>
                    </form>
                </td>
                <br>
                <td>
                    <form action="delete/${plan.id}" method="post">
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
