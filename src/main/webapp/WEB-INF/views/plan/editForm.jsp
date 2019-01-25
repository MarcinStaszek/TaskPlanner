<html>
<head>
    <title>Edit Plan</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-row-padding w3-center w3-padding-64" id="category">

    <h2>Edit plan</h2>
    <div class="container">
        <div class="form-group">
            <form:form modelAttribute="plan" method="post">
                <label>Plan Name</label><br>
                <form:input path="name"/><br>
                <label>Description</label><br>
                <form:textarea path="description"/><br>
                <label>Progress Comment in (%)</label><br>
                <form:input path="progressComment"/><br>

                <input type="submit" value="Send">
            </form:form>
        </div>
    </div>
</div>



<%@include file="footer.jsp" %>
</body>
</html>