<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Desktop</title>
</head>
<body>

<%@include file="header.jsp" %>


<div class="w3-container w3-center">
    <h2>Desktop</h2>
    <p>Plan to change your life!</p>
</div>

<div class="w3-display-container w3-section" style="height:40%">
    <table class="w3-table-all w3-display-middle w3-bordered" style="width:50%">
    <thead>
    <tr class="w3-teal w3-center">
        <th>Name</th>
        <th>Add New</th>
        <th>Database</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Plan</td>
        <br>
        <td>
            <a href="plan/add">
                <button class="w3-button w3-green">Add</button>
            </a>
        </td>
        <br>
        <td>
            <a href="plan/all">
                <button class="w3-button w3-block w3-teal">All Plans</button>
            </a>
        </td>
        <br>
    </tr>
    <tr>
        <td>Task</td>
        <br>
        <td>
            <a href="task/add">
                <button class="w3-button w3-green">Add</button>
            </a>
        </td>
        <br>
        <td>
            <a href="task/all">
                <button class="w3-button w3-block w3-teal">All Tasks</button>
            </a>
        </td>
        <br>
    </tr>
    <tr>
        <td>Comments</td>
        <br>
        <td>
            <a href="comment/add">
                <button class="w3-button w3-green">Add</button>
            </a>
        </td>
        <br>
        <td>
            <a href="comment/all">
                <button class="w3-button w3-block w3-teal">All Comments</button>
            </a>
        </td>
        <br>
    </tr>
    <tr>
        <td>Category</td>
        <br>
        <td>
        <a href="category/add">
            <button class="w3-button w3-green">Add</button>
        </a>
        </td>
        <br>
        <td>
            <a href="category/all">
                <button class="w3-button w3-block w3-teal">All Categories</button>
            </a>
        </td>
        <br>
    </tr>

    </tbody>
</table>
</div>

<%@include file="footer.jsp" %>


</body>
</html>
