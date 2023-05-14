<%-- 
    Document   : register
    Created on : 14 Apr, 2023, 1:37:21 AM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="css/register.css">
  <script src="main.js"></script>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>

  <title>register</title>
</head>
<body>
  <div class="pr-container bg-info">

    <div class="logo">
      <a href="index.jsp"><img src="icon_png/logo2.png" alt="logo" height="100px" width="200px"></a>
  </div>
      <div class="pr-boxer">
        <div class="pr-box bg-info-subtle">
          <h1 class="pt-3 d-block text-center ">Sign Up</h1>
          
          <script>
              function regValidation()
              {
                  var name = document.regform.name1.value;
                  var surname = document.regform.surname1.value;
                  var username = document.regform.username1.value;
                  var email = document.regform.email1.value;
                  var pass = document.regform.pass1.value;
                  var day = document.regform.day1.value;
                  var month= document.regform.month1.value;
                  var year = document.regform.year1.value;
                  var gender = document.regform.gender1.value;
                  var city = document.regform.city1.value;                  
                  
                  var name_pattern=/^[A-Za-z]+$/;
                  var surname_pattern=/^[A-Za-z]+$/;
                  var username_pattern=/^[A-Za-z0-9_]{4,16}$/;
                  var email_pattern=/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                  var pass_pattern=/^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})/;
                  
                  if(!name.match(name_pattern))
                  {
                      alert("not a valid name")
                      return false;
                  }
                  else if(!surname.match(surname_pattern))
                  {
                      alert("not a valid surname")
                      return false;
                  }
                  else if(!username.match(username_pattern))
                  {
                      alert("not a valid username")
                      return false;
                  }
                  else if(!email.match(email_pattern))
                  {
                      alert("not a valid email")
                      return false;
                  }
                  else if(!pass.match(pass_pattern))
                  {
                      alert("not a valid pass")
                      return false;
                  }
                  else if(day === "Day")
                  {
                      alert("not a valid day")
                      return false;
                  }
                  else if(month === "Months")
                  {
                      alert("not a valid month")
                      return false;
                  }
                  else if(year === "Year..")
                  {
                      alert("not a valid year")
                      return false;
                  }
                  else if(gender === "")
                  {
                      alert("not a valid gender")
                      return false;
                  }
                  else if(city==="City..")
                  {
                      alert("Select city");
                      return false;
                  }
                  else
                  {
                      document.regform.action="Register";
                      document.regform.submit();
                  }  
              }
              

          </script>
          
          
          
          <form method="post" name="regform" onsubmit="return regValidation()">
              <div class="d-flex flex-row justify-content-around h-3">
                <div class="register-name pr-padding">
                  <input type="text" name="name1" class="name placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Enter your name without numbers" placeholder="Name">
                </div>
                <div class="register-surname pr-padding">
                  <input type="text" name="surname1" class="surname placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Enter your lastname without numbers" placeholder="Last Name">
                </div>
              </div>
              
              <div class="padding-signup-1">
                <div class="register-email pr-padding">
                  <input type="text" name="username1" class="placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Enter username must be unique it contain @ on start and number eg: @name12" placeholder="UserName">
                  <!--<div class="alert alert-danger">Username already exist</div>-->
                </div>
                  
                <div class="padding-signup-1">
                  <div class="register-email pr-padding">
                    <input type="email" name="email1" class="email placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="eg: Example@gmail.com" placeholder="Mobile Number or E-mail">
                    <!--<div class="alert alert-danger ">email already exist</div>-->
                  </div>

                  <div class="register-password pr-padding">
                    <input type="password" name="pass1" class="password placeholder-all form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Pa**word must contain caps, number & special character"  placeholder="New Password">
                  </div>
                </div>

                <div class="register-password pr-padding">
                <label for="r-dob" class="form-label" >Date of Birth?</label>
                <div class="text-droplist d-flex justify-content-around">
                  <select id="day" name="day1" class="register-p form-control border-1 border-info" id="r-dob" data-toggle="tooltip"  data-bs-placement="bottom" title="Select Day">
                    <option selected="" disabled="" value="Day">Day</option>
                    <script>
                      for (var i = 1; i <= 31; i++) {
                        document.write("<option value='" + i + "'>" + i + "</option>");
                      }
                    </script>
                  </select>

                  <select id="month" name="month1" class="form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Select month">
                    <option selected="" disabled="" value="Months">Months</option>
                    <option value="01">January</option>
                    <option value="02">February</option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                  </select>

                  <select id="year" name="year1" class="pr-year form-control border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="Select year">
                    <option selected="" disabled="" value="Year..">Year..</option>
                    <script>
                      var currentYear = new Date().getFullYear();
                      for (var i = currentYear; i >= currentYear - 100; i--) {
                        document.write("<option value='" + i + "'>" + i + "</option>");
                      }
                    </script>
                  </select>
                </div>
                </div>

                <div class="register-password pr-padding">
                <label for="r-gender" class="form-label">Gender?</label>
                <div class="d-flex flex-row justify-content-around">
                  <div>
                    <input type="radio" name="gender1" class="form-check-input border-1 border-info" id="gridRadios1" value="Male" data-toggle="tooltip"  data-bs-placement="bottom" title="Select Male">Male
                  </div>
                  <div>
                    <input type="radio" name="gender1" class="form-check-input border-1 border-info" id="gridRadios1" value="Female" data-toggle="tooltip"  data-bs-placement="bottom" title="Select Female">Female
                  </div>
                  <div>
                    <input type="radio" name="gender1" class="form-check-input border-1 border-info" id="gridRadios1" value="Others" data-toggle="tooltip"  data-bs-placement="bottom" title="Select Others">Others
                  </div>
                </div>
              </div>

              <div class="register-password pr-padding">
                <select class="form-select form-select-sm border-1 border-info" name="city1" data-toggle="tooltip"  data-bs-placement="bottom" title="Select city">
                  <option selected="" disabled="" value="City..">City..</option>
                    <option value="Mumbai">Mumbai</option>
                    <option value="Pune">Pune</option>
                    <option value="Bangaluru">Bengaluru</option>
                    <option value="Chennai">Chennai</option>
                    <option value="Ahemdabad">Ahemdabad</option>
                    <option value="Jaipur">Jaipur</option>
                    <option value="custom">Custom</option>
                  </select>
                </div>
              

              <div class="login-form pr-button-div ">
                  <input type="submit" value="Register" class="btn btn-info text-white border-1 border-info" data-toggle="tooltip"  data-bs-placement="bottom" title="want to submit">
              </div>
            </div>
          </form>
        </div>
    </div>
  </div>
  </body>
</html>
