<%-- 
    Document   : index
    Created on : 14 Apr, 2023, 1:33:38 AM
    Author     : Mayank
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"  href="css/index.css" >
    <script src="main.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel=stylesheet>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
        <title>FriendsBook.com</title>
</head>

<body>
    <div>
        <!-- Navigation -->
        <%@include file="navigation.jsp"%>
        <!--xx Navigation xx -->
        
        <div class="wrapper d-flex flex-row main justify-content-between bg-body-secondary">
            <!-- Left -->  
            <%@include file="left_index.jsp"%>
            <!-- xx left xx -->
            
            <!-- Middle -->
            <div class="scrollable middle container">
                <%@include file="Status.jsp" %>

                <div class="p-sm-3 me-md-3">
                
                    <%@include file="writePost.jsp" %>

                    <!-- post -->
                    <%@include file="home_post.jsp" %>
                </div>
            </div>

            <!-- Right -->
            <%@include file="right_index.jsp" %>
        <!-- xx right xx -->
        </div>
    </div>
</body>

</html>