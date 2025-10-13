<%-- 
    Document   : Admin_header
    Created on : 27 Dec, 2024, 7:49:04 PM
    Author     : RUCHITA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Management</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-info">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="Image/logo.jpg" height="40" width="40">Surya Events</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Add_Event.jsp">Event</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Add_Food.jsp">Food</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Add_Beverage.jsp">Beverage</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Add_Theme.jsp">Theme</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Add_Service.jsp">Service</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="admin_bookinglist.jsp">Bookinglist</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="admin_feedbacklist.jsp">Feedbacklist</a>
        </li>
      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            List
          </a>
          <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="admin_eventlist.jsp">Event List</a></li>
              <li><a class="dropdown-item" href="admin_foodlist.jsp">Food List</a></li>
              <li><a class="dropdown-item" href="admin_beveragelist.jsp">Beverage List</a></li>
              <li><a class="dropdown-item" href="admin_themelist.jsp">Theme List</a></li>
              <li><a class="dropdown-item" href="admin_servicelist.jsp">Service List</a></li>

<!--            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>-->
          </ul>
        </li>
       
      </ul>
      <form class="d-flex" role="search">
<!--        <input class="" type="search" placeholder="Search" aria-label="Search">-->
        <a class="btn btn-danger" href="index.html">Log Out</a>
      </form>
    </div>
  </div>
</nav>
    </body>
</html>

