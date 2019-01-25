<html>
<head>
    <title>Edit Comment</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-row-padding w3-center w3-padding-64" id="category">

    <h2>Edit comment</h2>
    <div class="container">
        <div class="form-group">
            <form:form modelAttribute="comment" method="post">
                <label>Comment text</label><br>
                <form:input path="commentText"/><br>

                <input type="submit" value="Send">
            </form:form>
        </div>
    </div>
</div>



<%@include file="footer.jsp" %>
</body>
</html>