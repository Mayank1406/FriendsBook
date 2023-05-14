<%-- 
    Document   : right_index
    Created on : 14 Apr, 2023, 3:28:44 AM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="right align-self-start mt-4 rounded-1">
                <div class="Event d-flex flex-column ">
                    <!-- heading of event -->
                    <div class=" d-flex flex-row justify-content-around px-1 pt-2">
                        <div class="w-75 ">
                            <h4>Events</h4>
                        </div>
                        <div><a href="#" class="float-end">Seeall</a></div>
                    </div>
                    <!-- left-side-event -->
                    <div class="date d-flex flex-row mb-2">
                        <div class="d-flex flex-column">
                            <h3 class="mx-sm-4 fs-4 fw-semibold">18</h3><br>
                            <span class="border-danger mx-3 badge bg-secondary">march</span>
                        </div>
                        <!-- right-side-Event -->
                        <div class="d-flex flex-column">
                            <h3 class="fs-4 fw-semibold">Social Media</h3>
                            <span class=>IIT Bombay<br><a href="#"><small>more_info</small></a></span>
                            <span></span>
                        </div>
                    </div>

                    <!-- left-side-event -->

                    <div class="date d-flex flex-row mb-2">
                        <div class="d-flex flex-column">
                            <h3 class="mx-sm-4 fs-4 fw-semibold">25</h3><br>
                            <span class="border-danger mx-sm-3 badge bg-danger">march</span>
                        </div>
                        <!-- right-side-Event -->
                        <div class="d-flex flex-column">
                            <h3 class="fs-4 fw-semibold">Meeting</h3>
                            <span class=>Kanpur</span><a href="#"><small>more info</small></a>
                        </div>
                    </div>
                </div>


                <div class="Ad d-flex flex-column">
                    <div class="d-flex flex-row pt-sm-2 justify-content-around">
                        <div class="w-75">
                            <h5 class="mx-2">Ad</h5>
                        </div>
                        <span><a href="#">close</a></span>
                    </div>
                    <div>
                        <a href="https://smartprogramming.in/"><img src="icon_png/Ad.png" alt="advertisement" height="130px" width="298px" class="px-4"></a>
                    </div>
                </div>


                <div class="Ad d-flex flex-column pt-3">
                    <div class="d-flex flex-row justify-content-around">
                        <div class="w-75">
                            <h5 class="mx-2">Conversation</h5>
                        </div>
                        <span><a href="#">hide</a></span>
                    </div>
                    <div class="d-flex flex-column justify align-content-center">
                        <div class="pb-2 chat">
                            <a href="FriendsProfile.jsp" alt="recent">
                                <img src="icon_png/member-1.png" height="40px" class="px-3 recents_chat">
                                <span>Alisonparker</span>
                            </a>
                        </div>
                        <div class="pb-2 chat">
                            <a href="FriendsProfile.jsp" alt="recent">
                                <img src="icon_png/member-2.png" height="40px" class="px-3 recents_chat">
                                <span>Alisonparker</span>
                            </a>
                        </div>
                        <div class="pb-2 chat">
                            <a href="FriendsProfile.jsp" alt="recent">
                                <img src="icon_png/member-3.png" height="40px" class="px-3 recents_chat">
                                <span>Alisonparker</span>
                            </a>
                        </div>
                        <div class="pb-2 chat">
                            <a href="FriendsProfile.jsp" alt="recent">
                                <img src="icon_png/member-4.png" height="40px" class="px-3 recents_chat">
                                <span>Alisonparker</span>
                            </a>
                        </div>
                        <div class="pb-2 chat">
                            <a href="FriendsProfile.jsp" alt="recent">
                                <img src="icon_png/member-5.png" height="40px" class="px-3 recents_chat">
                                <span>Alisonparker</span>
                            </a>
                        </div>
                        

                    </div>
                </div>

            </div>
    </body>
</html>
