<%-- 
    Document   : myProfile
    Created on : 14 Apr, 2023, 2:16:18 AM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="stylesheet" href="css/myProfile.css">
        <link rel="stylesheet" href="css/index.css">
        <script src="main.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel=stylesheet>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
        <title>Document</title>
    </head>

    <body>
        <div class="bg-body-secondary">
            <!-- Navigation -->
            <%@include file="navigation.jsp" %>
            <!--xx Navigation xx -->

            <div>
                <div class="p4-1img-box">
                    <img src="icon_png/cover.png" class="p4-1img" href="profile_pic">
                </div>

                <div class="p4-profile-info">
                    <div class="d-flex flex-row justify-content-between bg-white px-3 py-2 rounded-2">
                        <div class="d-flex flex-row">
                            <div>
                                <img src="profile-pics/<%= session.getAttribute("session_profile_pic")%>" href="profile_pic" class="p4-2img">
                            </div>
                            <div class="p4-3img-container">
                                <h3><%= session.getAttribute("session_name")%>&nbsp<%= session.getAttribute("session_surname")%></h3>
                                <small>120 Friends - 20 mutual</small>
                                <div>
                                    <img src="icon_png/member-1.png" href="" class="p4-3img-mutual">
                                    <img src="icon_png/member-2.png" href="" class="p4-3img-mutual">
                                    <img src="icon_png/member-3.png" href="" class="p4-3img-mutual">
                                    <img src="icon_png/member-5.png" href="" class="p4-3img-mutual">
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <a class="btn btn-sm btn-primary align-self-start" href="editProfile.jsp" role="button"><i class="fa fa-pencil" aria-hidden="true"></i>
                            </a>
                            <a class="btn btn-sm" href="" role="button" area-control="" collapseExample></a>
                        </div>

                    </div>
                </div>
            </div>

            <div class="p4-profile-info">
                <div class="d-flex flex-row gap-4">
                    <div class="col-4 rounded-2 align-self-start">
                        <div class="bg-white px-3 rounded-2">
                            <div class="p4-intro d-flex flex-row justify-content-between">
                                <h5 class="pt-2">Intro</h5>
                                <div class="">
                                    <a class="btn btn-sm btn-primary align-self-start mt-2" href="editProfile.jsp#intro" role="button"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div class="px-md-3 p4-into-line text-center">
                                <small class="">Believe in yourself and you can do unbelievable things.</small>
                            </div>
                            <hr>
                            <div class="">
                                <p class="p4-intro-about-qoutes"><img src="icon_png/profile-job.png"
                                                                      class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_workingat")%></p>
                                <p class="p4-intro-about-qoutes"><img src="icon_png/profile-study.png"
                                                                      class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_studied")%></p>
                                <p class="p4-intro-about-qoutes"><img src="icon_png/profile-home.png"
                                                                      class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_highschool")%></p>
                                <p class="p4-intro-about-qoutes"><img src="icon_png/profile-location.png"
                                                                      class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_livingat")%></p>
                                <p class="p4-intro-about-qoutes"><img src="icon_png/profile-location.png" class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_from")%></p>
                            </div>
                        </div>
                        <div class="bg-white px-3 rounded-2">

                            <div>
                                <div class="d-flex flex-row justify-content-between">
                                    <h5 class="pt-2">Photos</h5>
                                    <a href="#" class="p4-photos-heading pt-2">All Photos</a>
                                </div>
                                <div class="p4-all-photos">
                                    <div class="d-flex gap-2 pb-2">
                                        <img src="icon_png/photo1.png" class="p4-photos">
                                        <img src="icon_png/photo2.png" class="p4-photos">
                                        <img src="icon_png/photo3.png" class="p4-photos">
                                    </div>
                                    <div class="d-flex gap-2 pb-2">
                                        <img src="icon_png/photo4.png" class="p4-photos">
                                        <img src="icon_png/photo5.png" class="p4-photos">
                                        <img src="icon_png/photo6.png" class="p4-photos">
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="pt-3">
                            <div class="bg-white px-3 rounded-2">
                                <div class="d-flex flex-row justify-content-between">
                                    <div>
                                        <h5 class="pt-2">Friends</h5>
                                        <small class="mutual">Friends-120</small>
                                    </div>
                                    <a href="#" class="p4-photos-heading pt-2">See All</a>
                                </div>
                                <div class="p4-all-photos">
                                    <div class="d-flex gap-2 pb-2">
                                        <img src="icon_png/member-1.png" class="p4-photos">
                                        <img src="icon_png/member-2.png" class="p4-photos">
                                        <img src="icon_png/member-3.png" class="p4-photos">
                                    </div>
                                    <div class="d-flex gap-2 pb-2">
                                        <img src="icon_png/member-4.png" class="p4-photos">
                                        <img src="icon_png/member-5.png" class="p4-photos">
                                        <img src="icon_png/member-6.png" class="p4-photos">
                                    </div>
                                    <div class="d-flex gap-2 pb-2">
                                        <img src="icon_png/member-7.png" class="p4-photos">
                                        <img src="icon_png/member-8.png" class="p4-photos">
                                        <img src="icon_png/member-9.png" class="p4-photos">
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>

                    <div class="col-sm">
                        <div>
                            <%@include file="writePost.jsp" %>
                        </div>

                        <%@include file="postPage.jsp"%>


                    </div>
                </div>
            </div>
        </div>

    </body>

</html>
