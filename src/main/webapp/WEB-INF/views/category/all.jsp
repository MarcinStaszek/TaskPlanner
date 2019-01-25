
<html>
<head>
    <title>Categories</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-container w3-center">
    <h2>All categories</h2>
</div>

<div class="w3-display-container w3-section">
    <table class="w3-table-all w3-display-middle" style="width:50%">
        <thead>
        <tr class="w3-teal w3-center">
            <th>Name</th>
            <th>Created Date</th>
            <th>Updated Date</th>
            <th>Edit</th>
            <th>Remove</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="category" items="${allCategories}">
            <tr>
                <td>${category.name}</td>
                <br>
                <td>${category.created}</td>
                <br>
                <td>${category.updated}</td>
                <br>
                <td>
                    <form action="edit/${category.id}" method="get">
                        <button class="w3-button w3-blue" type="submit">Edit</button>
                    </form>
                </td>
                <br>
                <td>
                    <form action="delete/${category.id}" method="post">
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
