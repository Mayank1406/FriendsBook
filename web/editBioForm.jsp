<%-- 
    Document   : editBio.jsp
    Created on : 25 Apr, 2023, 1:18:25 AM
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
        <script>
            function bioValidation()
            {
               var about = document.editbio.about1.value;
               var workingat = document.editbio.workingat1.value;
               var studied = document.editbio.studied1.value;
               var highschool = document.editbio.highschool1.value;
               var livingat = document.editbio.livingat1.value;
               var from = document.editbio.from1.value;
               if(about === "")
               {
                   alert("Please Enter Something about you");
                   return false;
               }
               else if(workingat === "")
               {
                   alert("Add something about your work");
                   return false;
               }
               else if(studied === "")
               {
                   alert("add Something about your Qualification");
                   return false;
               }
               else if(highschool === "")
               {
                   alert("add Something about your Qualification");
                   return false;
               }
               else if(livingat === "")
               {
                   alert("add Something about your Qualification");
                   return false;
               }
               else if(from === "")
               {
                   alert("add Something about your Qualification");
                   return false;
               }
               else
               {
                   document.editbio.action = "EditBio";
                   document.editbio.submit();
               }
            }
        </script>
        <div class="row pb-5 bio-pad">
            <div class="col-md-5 pb-3">
                <h1 id="intro">Intro</h1>
                <div class="px-md-3 p4-into-line ">
                    <p class="pb-3"><%= session.getAttribute("session_about") %></p>
                </div>
                <div class="">
                    <p class="p4-intro-about-qoutes"><img src="icon_png/profile-job.png"
                                                          class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_workingat")%></p>
                    <p class="p4-intro-about-qoutes"><img src="icon_png/profile-study.png"
                                                          class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_studied")%></p>
                    <p class="p4-intro-about-qoutes"><img src="icon_png/profile-home.png"
                                                          class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_highschool")%></p>
                    <p class="p4-intro-about-qoutes"><img src="icon_png/profile-location.png"
                                                          class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_livingat")%></p>
                    <p class="p4-intro-about-qoutes"><img src="icon_png/profile-location.png"
                                                          class="p4-intro-about"><span class="p4-intro-about-qoutes"><%=session.getAttribute("session_from")%></p>
                </div>
            </div>


            <div class="col-md-7 pb-3">
                <h3>Add Bio?</h3>
                <form method="post" name="editbio" onsubmit="bioValidation()">

                    <div class="row mb-3 div-workingat">
                        <div class="col-sm-10">
                            <input type="hidden" name="user_id1" value="<%=session.getAttribute("session_user_id")%>">
                        </div>
                    </div>    

                    <div class="row mb-3 div-workingat">
                        <label for="ep-b1" class="col-sm-2 col-form-label">About?</label>
                        <div class="col-sm-10">
                            <input type="text" id="ep-b1" class="form-control border-1 border-info" name="about1" placeholder="<%=session.getAttribute("session_about")%>">
                        </div>
                    </div>
                    <div class="row mb-3 div-workingat">
                        <label for="epb2" class="col-sm-2 col-form-label">Working At?</label>
                        <div class="col-sm-10">
                            <input type="text" id="ep-b2" class="form-control border-1 border-info" name="workingat1" placeholder="<%=session.getAttribute("session_workingat")%>">
                        </div>
                    </div>
                    <div class="row mb-3 div-workingat">
                        <label for="epb3" class="col-sm-2 col-form-label">Studied?</label>
                        <div class="col-sm-10">
                            <input type="text" id="ep-b3" class="form-control border-1 border-info" name="studied1" placeholder="<%=session.getAttribute("session_studied")%>">
                        </div>
                    </div>
                    <div class="row mb-3 div-workingat">
                        <label for="ep-b4" class="col-sm-2 col-form-label">High School?</label>
                        <div class="col-sm-10">
                            <input type="text" id="ep-b4" class="form-control border-1 border-info" name="highschool1" placeholder="<%=session.getAttribute("session_highschool")%>">
                        </div>
                    </div>
                    <div class="row mb-3 div-workingat">
                        <label for="ep-b5" class="col-sm-2 col-form-label">Living At?</label>
                        <div class="col-sm-10">
                            <input type="text" id="ep-b5" class="form-control border-1 border-info" name="livingat1" placeholder="<%=session.getAttribute("session_livingat")%>">
                        </div>
                    </div>
                    <div class="row mb-3 div-workingat">
                        <label for="ep-b6" class="col-sm-2 col-form-label">From ?</label>
                        <div class="col-sm-10">
                            <input type="text" id="ep-b6" class="form-control border-1 border-info" name="from1" placeholder="<%=session.getAttribute("session_from")%>">
                        </div>
                    </div>
                    <div class="login-form pr-button-div col-lg-8">
                        <input type="submit" value="Update Changes" class="btn btn-info text-white border-1 border-info " data-toggle="tooltip"  data-bs-placement="bottom" title="want to update">
                    </div>   

                </form>
            </div>

        </div>
    </body>
</html>
