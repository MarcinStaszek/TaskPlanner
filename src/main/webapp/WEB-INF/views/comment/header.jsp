<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body id="myPage">


<!-- Navbar -->
<div class="w3-top">
    <div class="w3-bar w3-theme-d2 w3-left-align">
        <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-theme-d2"
           href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
        <a href="/" class="w3-bar-item w3-button w3-teal"><i class="fa fa-home w3-margin-right"></i>HomePage</a>
        <a href="/user/desktop" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Desktop</a>


    </div>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
        <a href="/login" class="w3-bar-item w3-button"> Login</a>
    </div>
</div>

<!-- Image Header -->
<div class="w3-display-container w3-animate-opacity">
    <img src="<s:url value="/images/sailboat.jpg"/>" alt="boat" style="width:100%;min-height:350px;max-height:40vh;">
</div>

</body>
</html>
