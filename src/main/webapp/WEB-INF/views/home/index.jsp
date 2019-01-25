<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<title>Task Planner</title>
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
        <a href="#features" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Features</a>
        <a href="#about" class="w3-bar-item w3-button w3-hide-small w3-hover-white">About</a>
        <a href="#pricing" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Price</a>
        <a href="#contact" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Contact Me</a>
        <div class="w3-dropdown-hover w3-hide-small">
            <button class="w3-button" title="Notifications">See Also<i class="fa fa-caret-down"></i></button>
            <div class="w3-dropdown-content w3-card-4 w3-bar-block">
                <a href="https://coderslab.pl/pl/" class="w3-bar-item w3-button" target="_blank">CodersLab</a>
                <a href="https://devstyle.pl/" class="w3-bar-item w3-button" target="_blank">devstyle</a>
                <a href="https://www.sitebuilderreport.com/stock-up" class="w3-bar-item w3-button" target="_blank">Stock
                    Up</a>
                <a href="https://stackoverflow.com/" class="w3-bar-item w3-button" target="_blank">Stack Overflow</a>

            </div>
        </div>
        <div>
            <a href="/login" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Login"><i
                    class="glyphicon glyphicon-log-in"></i></span> Login</a>
        </div>
        <div>
            <a href="/register" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Register"><i
                    class="glyphicon glyphicon-user"></i></span> Sign Up</a>
        </div>
    </div>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
        <a href="#features" class="w3-bar-item w3-button">Features</a>
        <a href="#about" class="w3-bar-item w3-button">About</a>
        <a href="#pricing" class="w3-bar-item w3-button">Price</a>
        <a href="#contact" class="w3-bar-item w3-button">Contact Me</a>
        <a href="/register" class="w3-bar-item w3-button">Sign Up</a>
        <a href="/login" class="w3-bar-item w3-button">Login</a>
    </div>
</div>

<!-- Image Header -->
<div class="w3-display-container w3-animate-opacity">
    <img src="<s:url value="/images/planningDesign2.jpg"/>" alt="planning"
         style="width:100%;min-height:50vh;max-height:60vh;">
    <div class="w3-container w3-display-bottomleft w3-margin-bottom">
        <button onclick="document.getElementById('id01').style.display='block'"
                class="w3-button w3-xlarge w3-theme w3-hover-teal" title="Learn&SignIn">...Make Your Life Easier
        </button>
    </div>
</div>

<!-- Modal -->
<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-top">
        <header class="w3-container w3-teal w3-display-container">
            <span onclick="document.getElementById('id01').style.display='none'"
                  class="w3-button w3-teal w3-display-topright"><i class="fa fa-remove"></i></span>
            <h4>Just one step to make your life easier!</h4>
            <h5><a class="w3-text-black" href="/register">Register</a> to Task Planner<i class="fa fa-smile-o"></i>
            </h5>
        </header>
        <div class="w3-container">
            <br>
            <p>If you already have account...</p>
            <p>don't wait <a class="w3-text-teal" href="/login">login</a> to Task Planner</p>
        </div>
    </div>
</div>

<!-- Features -->
<div class="w3-container w3-padding-64 w3-center" id="features">
    <h2>TASK PLANNER FEATURES</h2>

    <div class="w3-row"><br>

        <div class="w3-quarter">
            <img src="<s:url value="/images/plans.jpg"/>" alt="Plans" style="width:45%"
                 class="w3-circle w3-hover-opacity">
            <h3>CREATE PLANS</h3>
            <p>Edit them whenever you want</p>
        </div>

        <div class="w3-quarter">
            <img src="<s:url value="/images/categories.jpeg"/>" alt="Categories" style="width:45%"
                 class="w3-circle w3-hover-opacity">
            <h3>MAKE YOUR OWN CATEGORIES</h3>
            <p>As much as you need</p>
        </div>

        <div class="w3-quarter">
            <img src="<s:url value="/images/toDo.jpg"/>" alt="toDo" style="width:45%"
                 class="w3-circle w3-hover-opacity">
            <h3>ADD TASKS</h3>
            <p>To make your work go</p>
        </div>

        <div class="w3-quarter">
            <img src="<s:url value="/images/comment.jpg"/>" alt="comment" style="width:45%"
                 class="w3-circle w3-hover-opacity">
            <h3>COMMENT</h3>
            <p>Manage your progress and keep it going</p>

        </div>
    </div>
</div>

<!-- Work Row -->
<div class="w3-row-padding w3-padding-64 w3-theme-l1" id="about">

    <div class="w3-quarter">
        <h2>About </h2>
        <p>Task Planner is a simple yet powerful app that can help anyone get organized and achieve peace-of-mind,
            no matter where they are or what device they use. From planning large scale projects to simply remembering
            to pay the rent, Task Planner helps get things out of your head and into your plans.</p>
    </div>

    <div class="w3-quarter">
        <div class="w3-card w3-white">
            <img src="<s:url value="/images/womenPlanning.jpg"/>" alt="Lights" style="width:100%">
            <div class="w3-container">
                <h3>Make your plans</h3>
                <p>From small ideas to complicated strategy</p>
                <p>Anything you can think of</p>
                <p>Now you can design it </p>
                <p>Now your life is easier !</p>
            </div>
        </div>
    </div>

    <div class="w3-quarter">
        <div class="w3-card w3-white">
            <img src="<s:url value="/images/stickyNote.jpg"/>" alt="Snow" style="width:100%">
            <div class="w3-container">
                <h3>Every little task</h3>
                <p>Every duty</p>
                <p>Every mission</p>
                <p>Every responsibility</p>
                <p>Oh, yes... now you can plan it !</p>

            </div>
        </div>
    </div>


    <div class="w3-quarter">
        <div class="w3-card w3-white">
            <img src="<s:url value="/images/womanTraveller.jpg"/>" alt="Mountains" style="width:100%">
            <div class="w3-container">
                <h3>The most conviniet tool in the world</h3>
                <p>Simple</p>
                <p>Fast</p>
                <p>Always with you</p>
                <p>Wherever you will go !</p>
            </div>
        </div>
    </div>

</div>


<!-- Pricing Row -->
<div class="w3-row-padding w3-center w3-padding-64" id="pricing">
    <h2>PRICING</h2>
    <p>One of the best thing about Task Planner - it's free!</p><br>
    <img src="<s:url value="/images/happy.jpg"/>" class="img-fluid" alt="Happy" style="max-height:80vh"/>
</div>

<!-- Contact Container -->
<div class="w3-container w3-padding-64 w3-theme-l5" id="contact">
    <div class="w3-row">
        <div class="w3-col m5">
            <div class="w3-padding-16"><span class="w3-xlarge w3-border-teal w3-bottombar">Contact Me</span></div>
            <h3>Address</h3>
            <p>Warszawa</p>
            <p><i class="fa fa-map-marker w3-text-teal w3-xlarge"></i>Warsaw, Poland</p>
            <p><i class="fa fa-phone w3-text-teal w3-xlarge"></i>+48 517 465 949</p>
            <p><i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i>marcin.staszek88@gmail.com</p>
        </div>
        <div class="w3-col m7">

            <%-- Dorobić link do wysyłania emaila--%>

            <form class="w3-container w3-card-4 w3-padding-16 w3-white" action="#" target="_blank">
                <div class="w3-section">
                    <label>Name</label>
                    <input class="w3-input" type="text" name="Name" required>
                </div>
                <div class="w3-section">
                    <label>Email</label>
                    <input class="w3-input" type="text" name="Email" required>
                </div>
                <div class="w3-section">
                    <label>Message</label>
                    <input class="w3-input" type="text" name="Message" required>
                </div>
                <input class="w3-check" type="checkbox" checked name="Like">
                <label>I Like it!</label>
                <button type="submit" class="w3-button w3-right w3-theme">Send</button>
            </form>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>

</body>
</html>
