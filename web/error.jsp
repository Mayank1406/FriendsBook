<%-- 
    Document   : error
    Created on : 24 Apr, 2023, 1:40:04 AM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String message = (String)request.getAttribute("error_message");
%>
<html>
    <head>
        <title>JSP Page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel=stylesheet>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="">
    </head>
    <body class="bg-info">
        <div class="alert alert-danger alert-dismissiable fadeshow text-lg-center">
            <h4 style="color:red" class="d-inline"><%= message%></h4>
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
        
    </body>
</html>
