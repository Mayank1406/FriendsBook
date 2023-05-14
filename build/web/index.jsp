<%-- 
    Document   : login.jsp
    Created on : 14 Apr, 2023, 1:42:24 AM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="css/login.css">
        <script src="main.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel=stylesheet>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
        <title>Register Page</title>
    </head>

    <body>
    <div class="lp-container bg-info">
        <div class="lp-divide container">
            <div class="d-flex flex-row justify-content-around flex-wrap">
                <div>
                    <div class="lp-logo">
                    <a href="#"><img src="icon_png/logo2.png" alt="logo" height="200px" width="300px"></a>
                    </div>
                </div>

                <script>
                    function logValidation()
                    {
                        var email = document.logform.email1.value;
                        var pass = document.logform.pass1.value;
                        var email_pattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                        var pass_pattern = /^((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})/;

                        if (!email.match(email_pattern))
                        {
                            alert("not a valid email")
                            return false;
                        }
                        else if (!pass.match(pass_pattern))
                        {
                            alert("not a valid pass")
                            return false;
                        }
                        else if (pass.length>20)
                        {
                            alert("please make it less than 20 character")
                        }
                        else
                        {
                            document.logform.action = "Login";
                            document.logform.submit();
                        }
                    }
                </script>

                <div>
                    <div class="p-sm-3 bg-info-subtle">
                        <form action="Login" method="post" name="logform" onsubmit="return logValidation()">
                            <div class="lp-form-container lp-form">
                                <div class="lp-login-email">
                                    <input type="email" name="email1" class="form-control lp-E-mail border-2 border-info" data-toggle="tooltip" data-bs-placement="bottom" title="eg: Example@gmail.com" placeholder="Mobile Number or E-mail" style="font-size: 15px;">
                                </div>
                                <div class="lp-password">
                                    <input type="password" name="pass1" class="lp-1-password form-control border-2 border-info" data-toggle="tooltip" data-bs-placement="bottom" title="Pa#$word contain, 1special character, 1caps 1number and 1normal character it should be atleast 6 character long" placeholder="Password">
                                </div>
                            </div>
                            <div class="lp-form">
                                <div class="lp-button-div">
                                    <input type="submit" value="Login" class="btn btn-info text-white border-1 border-black form-control">
                                </div>
                                <div class="text-lg-center">
                                    <a href="#" class="lp-links">Forget Your Password?</a>
                                </div>
                            </div>
                        </form>
                        <div>
                            <div class="lp-button-div">
                            <a class="btn btn-success border-2 border-info" href="register.jsp" role="button" aria-controls="collapseExample"> Create a new account </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>