<html>
<head>
    <title>Add task</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-row-padding w3-center w3-padding-64" id="category">

    <h2>Create new task</h2>
    <div class="container">
        <div class="form-group">
            <form:form modelAttribute="task" method="post">
                <label>Name</label><br>
                <form:input path="name"/><br>
                <label>Description</label><br>
                <form:textarea path="description"/><br>

                <label>Choose Category</label><br>
                <form:select path="category.id">
                    <form:options items="${chooseCategory}" itemValue="id" itemLabel="name"/>
                </form:select><br>

                <label>Choose Plan</label><br>
                <form:select path="plan.id">
                    <form:options items="${choosePlan}" itemValue="id" itemLabel="name"/>
                </form:select><br>

                <label>Deadline</label><br>
                <form:input path="deadline"/><br>

                <label>Choose Priority (0-5)</label><br>
                <form:input path="priority"/><br>

                <label> Ended </label><br>
                <form:input path="isActive"/><br>

                <input type="submit" value="Send">
            </form:form>
        </div>
    </div>
</div>



<%@include file="footer.jsp" %>
</body>
</html>