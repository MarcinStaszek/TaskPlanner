<html>
<head>
    <title>Add comment</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-row-padding w3-center w3-padding-64" id="category">

    <h2>Create new comment</h2>
    <div class="container">
        <div class="form-group">
            <form:form modelAttribute="comment" method="post">
                <label>Comment text</label><br>
                <form:textarea path="commentText"/><br>

                <label>Choose user</label><br>
                <form:select path="user">
                    <form:option value="-" label="--Please Select"/>
                    <form:options items="${chooseUser}" itemValue="id" itemLabel="login"/>
                </form:select><br>

                <label>Choose Task</label><br>
                <form:select path="task">
                    <form:option value="-" label="--Please Select"/>
                    <form:options items="${chooseTask}" itemValue="id" itemLabel="name"/>
                </form:select><br>


                <input type="submit" value="Send">
            </form:form>
        </div>
    </div>
</div>



<%@include file="footer.jsp" %>
</body>
</html>