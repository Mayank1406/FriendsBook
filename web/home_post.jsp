<%-- 
    Document   : postPage
    Created on : 14 Apr, 2023, 2:24:09 AM
    Author     : Mayank
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="in.sp.dbqueries.DbQueries"%>
<%
    String email = (String) session.getAttribute("session_email");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
                try
                {
                    ResultSet rs = DbQueries.getstatusOfall();
                    while(rs.next())
                    {
                        String name1 = rs.getString("name");
                        String surname1 = rs.getString("lastname");
                        String profile_pic1 = rs.getString("profile_pic");
                                    
                        String email1 = rs.getString("email");
                        String status_text1 = rs.getString("status_text");
                        String status_img1 = rs.getString("status_img");
                         String date1 = rs.getString("date1");
                        String time1 = rs.getString("time1");
                                            
                        if(!status_text1.equals("") && !status_img1.equals(""))
                            {
            %>
        <div class="shadow p-4 mb-5 bg-body rounded">
            <img src="profile-pics/<%=profile_pic1%>" alt="" class="rounded-5 me-2" style="max-width: 50px" /> <span><%=name1%>&nbsp<%=surname1%></span> <span class="small text-secondary" style="float: right"> <%=date1%> [<%=time1%>] </span>
            <div class="row p-3 mt-2 ">
                <p class="post-text d-inline"><%=status_text1%></p>
                <p class="hastags post-text d-inline">#Friends #FriendsForever</p>
                <img src="post-pics/<%=status_img1%>" width="1440" height="960" style="height: 100%; left: 0%; width: calc(100%);">
            </div>
            <div>
                <a href="#" class="button_icon"><img src="icon_png/like-blue.png" alt=icon height="15px"><small></small> </a>
                <a href="#" class="button_icon"><img src="icon_png/share.png" alt=icon height="15px"><small></small></a>
                <a href="#" class="button_icon"><img src="icon_png/feeling.png" alt=icon height="15px"><small></small></a>
            </div>
        </div>
        <%
        }
            else if(status_text1.equals(""))
                {
        %>
        <div class="shadow p-4 mb-5 bg-body rounded">
            <img src="profile-pics/<%=profile_pic1%>" alt="" class="rounded-5 me-2" style="max-width: 50px" /><span><%=name1%>&nbsp<%=surname1%></span> <span class="small text-secondary" style="float: right"> <%=date1%> [<%=time1%>] </span>
            <div class="row p-3 mt-2 ">
                <img src="post-pics/<%=status_img1%>" width="400px">
            </div>
            <div>
                <a href="#" class="button_icon"><img src="icon_png/like.png" alt=ico height="15px"><small></small> </a>
                <a href="#" class="button_icon"><img src="icon_png/share.png" alt=icon height="15px"><small></small></a>
                <a href="#" class="button_icon"><img src="icon_png/feeling.png" alt=icon height="15px"><small></small></a>
            </div>
        </div>
        <%
            }
            else if(status_img1.equals(""))
            {
        %>
        <div class="shadow p-4 mb-5 bg-body rounded">
            <img src="profile-pics/<%=profile_pic1%>" alt="" class="rounded-5 me-2" style="max-width: 50px" /><span><%=name1%>&nbsp<%=surname1%></span> <span class="small text-secondary" style="float: right"> <%=date1%> [<%=time1%>] </span>
            <div class="row p-3 mt-2 ">
                <p class="post-text d-inline"><%=status_text1%></p>
                <p class="hastags post-text d-inline">#Friends #FriendsForever</p>
            </div>
            <div>
                <a href="#" class="button_icon"><img src="icon_png/like.png" alt=icon height="15px"><small></small> </a>
                <a href="#" class="button_icon"><img src="icon_png/share.png" alt=icon height="15px"><small></small></a>
                <a href="#" class="button_icon"><img src="icon_png/feeling.png" alt=icon height="15px"><small></small></a>
            </div>
        </div>
        <%
            }
                }
                    }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        %>   
            
    </body>
</html>
