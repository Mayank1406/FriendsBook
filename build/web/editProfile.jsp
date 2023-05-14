<%-- 
    Document   : editProfile
    Created on : 25 Apr, 2023, 1:24:18 AM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
        <link rel="stylesheet"  href="css/index.css" > 
        <link rel="Stylesheet" href="css/EditProfile.css">
        <script src="main.js"></script> 
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel=stylesheet>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <%@include file="navigation.jsp"%>
        <div class="bg-body-secondary ep-container">
            <div class="container"> 
        <%@include file="editProfileform.jsp" %>
        <%@include file="editBioForm.jsp" %>
            </div>
        </div>
    </body>
</html>
