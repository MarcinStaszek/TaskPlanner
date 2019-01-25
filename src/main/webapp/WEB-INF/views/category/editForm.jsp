<html>
<head>
    <title>Edit category</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-row-padding w3-center w3-padding-64" id="category">

    <h2>Edit category</h2>
    <div class="container">
        <div class="form-group">
            <form:form modelAttribute="category" method="post">
                <label>Category Name</label><br>
                <form:input path="name"/><br>

                <input type="submit" value="Send">
            </form:form>
        </div>
    </div>
</div>



<%@include file="footer.jsp" %>
</body>
</html>