<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Holiday Crown | Best hotel in Dubai</title>

        <!-- Google fonts -->
        <link href='http://fonts.googleapis.com/css?family=Raleway:300,500,800|Old+Standard+TT' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:300,500,800' rel='stylesheet' type='text/css'>

        <!-- font awesome -->
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">


        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

        <!--Online Bootstrap-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
        <link rel="stylesheet" href="style.css">

        <link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
        <link rel="stylesheet" href="style.css">

        <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

    </head>

    <body id="home">



        <!-- header -->
        <nav class="navbar  navbar-default" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.png"  alt="holiday crown" /></a>

                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">

                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home </a></li>
                        <li><a href="introduction.jsp">Introduction</a></li>
                        <li><a href="gallery.jsp">Gallery</a></li>
                        <li><a href="viewBookings.jsp">View Bookings</a></li>
                        <li>
                            <%@include file="contact.jsp" %>
                        </li>                        
                        <li>
                            <a class="btn btn-link btn-lg" href="logout">Logout</a>
                        </li>
                    </ul>
                </div><!-- navbar-collapse -->
            </div><!-- container-fluid -->
        </nav>
        <!--        <img src="WEB-INF/images/photos/1.jpg"  />-->
        <!-- header -->

