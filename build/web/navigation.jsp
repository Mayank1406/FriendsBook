<%-- 
    Document   : newjsnavigation
    Created on : 14 Apr, 2023, 1:59:11 AM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Navigation</title>
    </head>
    <body>
        <nav class="navbar nav p1-nav-container bg-info sticky-top">
            <div class="container-fluid px-5 ">
                <div class="p1-img1-box">
                    <a href="Home.jsp"><img src="icon_png/logo.png" class="p1-img1"></a>
                </div>
                <div class="p1-img2-box">
                    <a href="#"><img src="icon_png/notification.png" class="p1-img2 p-3"></a>
                    <a href="#"><img src="icon_png/inbox.png" class="p1-img2 p-3"></a>
                    <a href="#"><img src="icon_png/video.png" class="p1-img2 p-3"></a>
                </div>
                <div class="p1-search-box p-2">
                    <input type="search" class="p1-search p1-nav-search form-control d-inline" placeholder="What are you looking for?" style="width:70%">
                    <button type="submit" class=" form-control btn-outline-primary nav-search rounded-1 d-inline" style="width:20%"><i class="fa fa-search"></i></button> 
                </div>

                <div class="dropstart">
                    <div class="align-content-center d-inline justify-content-center">
                        <img src="profile-pics/<%= session.getAttribute("session_profile_pic") %>" alt="Dropdown Toggle" class="dropdown-toggle rounded-5 p1-profile-img" data-bs-toggle="dropdown" height="50px">
                        <span><%= session.getAttribute("session_name") %> <%= session.getAttribute("session_surname") %></span>
                        <ul class="dropdown-menu ">
                                <li><a class="dropdown-item" href="Home.jsp">Home</a></li>
                                <li><a class="dropdown-item" href="myProfile.jsp">My Profile</a></li>
                                <li><a class="dropdown-item" href="editProfile.jsp">Edit My profile</a></li>
                                <li><a class="dropdown-item" href="logout">Logout</a></li>
                        </ul>
                    </div>
                       
                </div>
            </div>
        </nav>
    </body>
</html>
