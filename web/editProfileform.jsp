<%-- 
    Document   : editProfile
    Created on : 15 Apr, 2023, 5:40:06 PM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <title>Edit Profile</title>
        <link rel="stylesheet"  href="css/index.css" > 
        <link rel="Stylesheet" href="css/EditProfile.css">
        <script src="main.js"></script> 
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel=stylesheet>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <script>
            function editValidation()
            {
                var name = document.editform.name1.value;
                var surname = document.editform.surname1.value;
                var username = document.editform.username1.value;
                var email = document.editform.email1.value;
                var pass = document.editform.pass1.value;
                var day = document.editform.day1.value;
                var month = document.editform.month1.value;
                var year = document.editform.year1.value;
                var gender = document.editform.gender1.value;
                var city = document.editform.city1.value;

                var name_pattern = /^[A-Za-z]+$/;
                var surname_pattern = /^[A-Za-z]+$/;
                var username_pattern = /^[A-Za-z0-9_]{4,16}$/;
                var email_pattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                var pass_pattern = /^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})/;

                if (!name.match(name_pattern))
                {
                    alert("not a valid name")
                    return false;
                }
                else if (!surname.match(surname_pattern))
                {
                    alert("not a valid surname")
                    return false;
                }
                else if (!username.match(username_pattern))
                {
                    alert("not a valid username")
                    return false;
                }
                else if (!email.match(email_pattern))
                {
                    alert("not a valid email")
                    return false;
                }
                else if (!pass.match(pass_pattern))
                {
                    alert("not a valid pass")
                    return false;
                }
                else if (day === "Day")
                {
                    alert("not a valid day")
                    return false;
                }
                else if (month === "Months")
                {
                    alert("not a valid month")
                    return false;
                }
                else if (year === "Year..")
                {
                    alert("not a valid year")
                    return false;
                }
                else if (gender === "")
                {
                    alert("not a valid gender")
                    return false;
                }
                else if (city === "City..")
                {
                    alert("Select city");
                    return false;
                }
                else
                {
                    document.editform.action = "EditProfile";
                    document.editform.submit();
                }
            }

            window.onload = function () {
                var js_day = "<%=session.getAttribute("day")%>";
                document.getElementById("day").value = js_day;
                var js_month = "<%=session.getAttribute("month")%>";
                document.getElementById("month").value = js_month;
                var js_year = "<%=session.getAttribute("year")%>";
                document.getElementById("year").value = js_year;
                var js_city = "<%=session.getAttribute("session_city")%>";
                document.getElementById("cityoptions").value = js_city;
            }




        </script> 

        <div class="row justify-content-evenly pb-5 pt-3">
            <!-- left column -->
            <div class="col-md-3">
                <div class="text-center ep-div">
                    <h1 class="pt-4">Edit Profile</h1><br>
                    <img src="profile-pics/<%= session.getAttribute("session_profile_pic")%>" class="avatar img-circle" alt="avatar">
                    <h6>Upload a different photo...</h6>
                    <form action="UpdateProfilePic" method="post" enctype="multipart/form-data">
                        <input type="file" name="profile_pic_file" class="form-control">
                        <input type="submit" value="Change Profile Pic" class="btn btn-primary post_btn">
                    </form>
                </div>
            </div>

            <!-- edit form column -->
            <div class="col-md-6 personal-info">
                <!--        <div class="alert alert-info alert-dismissable">
                          <a class="panel-close close" data-dismiss="alert">×</a> 
                          <i class="fa fa-coffee"></i>
                          This is an <strong>.alert</strong>. Use this to show important messages to the user.
                        </div>-->
                <h3 class="pt-5">Personal info</h3>



                <form class="form-horizontal" role="form" method="post" action="EditProfile" name="editform" onsubmit="return editValidation()">

                    <div class="d-flex flex-row col-lg-8">
                        <div class="register-name pr-padding flex-fill">
                            <input type="text" name="name1" value="<%=session.getAttribute("session_name")%>" class="name placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Enter your name without numbers" placeholder="Name">
                        </div>

                        <div class="register-surname pr-padding flex-fill">
                            <input type="text" name="surname1" value="<%=session.getAttribute("session_surname")%>" class="surname placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Enter your lastname without numbers" placeholder="Last Name">
                        </div>
                    </div>


                    <div class="padding-signup-1">
                        <div class="register-email pr-padding col-lg-8">
                            <input type="text" name="username1" readonly value="<%=session.getAttribute("session_username")%>" class="placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Enter username must be unique it contain @ on start and number eg: @name12" placeholder="UserName">
                            <!--<div class="alert alert-danger">Username already exist</div>-->
                        </div>
                    </div>

                    <div class="padding-signup-1">
                        <div class="register-email pr-padding col-lg-8">
                            <input type="email" name="email1" value="<%=session.getAttribute("session_email")%>" class="email placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="eg: Example@gmail.com" placeholder="Mobile Number or E-mail">
                            <!--<div class="alert alert-danger ">email already exist</div>-->
                        </div>

                        <div class="register-password pr-padding col-lg-8">
                            <input type="password" name="pass1" class="password placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Pa**word must contain caps, number & special character"  placeholder="New Password">
                        </div>
                    </div>

                    <div class="register-password pr-padding col-lg-8">
                        <label for="r-dob" class="form-label" >Date of Birth?</label>
                        <div class="text-droplist d-flex justify-content-around">
                            <select id="day" name="day1" class="register-p form-control border-1 border-info" id="r-dob" data-toggle="tooltip"  data-bs-placement="bottom" title="Select Day">
                                <option disabled="" value="Day">Day</option>
                                <script>
                                    for (var i = 1; i <= 31; i++) {
                                        document.write("<option value='" + i + "'>" + i + "</option>");
                                    }
                                </script>
                            </select>

                            <select id="month" name="month1" class="form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Select month">
                                <option disabled="" value="Months">Months</option>
                                <option value="January">January</option>
                                <option value="February">February</option>
                                <option value="March">March</option>
                                <option value="April">April</option>
                                <option value="May">May</option>
                                <option value="June">June</option>
                                <option value="July">July</option>
                                <option value="August">August</option>
                                <option value="September">September</option>
                                <option value="October">October</option>
                                <option value="November">November</option>
                                <option value="December">December</option>
                            </select>

                            <select id="year" name="year1" class="pr-year form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Select year">
                                <option disabled="" value="Year..">Year..</option>
                                <script>
                                    var currentYear = new Date().getFullYear();
                                    for (var i = currentYear; i >= currentYear - 100; i--) {
                                        document.write("<option value='" + i + "'>" + i + "</option>");
                                    }
                                </script>
                            </select>
                        </div>
                    </div>

                    <div class="register-password pr-padding col-lg-8">
                        <label for="r-gender" class="form-label">Gender?</label>
                        <div class="d-flex flex-row justify-content-around">
                            <div>
                                <input type="radio" name="gender1" value="Male" id="Male"  class="form-check-input border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Select Male" <% if ("Male".equals(session.getAttribute("session_gender"))) { %> checked <% } %>>Male
                            </div>
                            <div>
                                <input type="radio" name="gender1" value="Female" id="Female" class="form-check-input border-1 border-info"  data-toggle="tooltip"  data-bs-placement="bottom" title="Select Female" <% if ("Female".equals(session.getAttribute("session_gender"))) { %> checked <% } %>>Female
                            </div>
                            <div>
                                <input type="radio" name="gender1" value="Others" id="Others" class="form-check-input border-1 border-info"  data-toggle="tooltip"  data-bs-placement="bottom" title="Select Others" <% if ("Others".equals(session.getAttribute("session_gender"))) { %> checked <% }%>>Others
                            </div>
                        </div>
                    </div>

                    <div class="register-password pr-padding col-lg-8">
                        <select class="form-select form-select-sm border-1 border-info" id="cityoptions" name="city1" data-toggle="tooltip"  data-bs-placement="bottom" title="Select city">
                            <option disabled="" value="City..">City..</option>
                            <!--<option selected="" disabled="" value="City..">City..</option>-->
                            <option value="Mumbai">Mumbai</option>
                            <option value="Pune">Pune</option>
                            <option value="Bengaluru">Bengaluru</option>
                            <option value="Chennai">Chennai</option>
                            <option value="Ahemdabad">Ahemdabad</option>
                            <option value="Jaipur">Jaipur</option>
                            <option value="Custom">Custom</option>
                        </select>
                    </div>


                    <div class="login-form pr-button-div col-lg-8">
                        <input type="submit" value="Save Changes" class="btn btn-info text-white border-1 border-info text-center" data-toggle="tooltip"  data-bs-placement="bottom" title="want to change">
                    </div>

                </form>
            </div>
        </div>
        <hr>
</body>
</html>
