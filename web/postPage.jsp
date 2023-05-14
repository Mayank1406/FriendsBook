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
        <script>
            var deleteButton = document.getElementById('deleteButton');
            // Attach an event listener to the delete button
            deleteButton.addEventListener('click', function() {
            // Display an alert when the button is clicked
            alert('Are you sure you want to delete this item?');
            });
        </script>
        
        
        <%
                try
                {
                    ResultSet rs = DbQueries.getstatusOfUser(email);
                    while(rs.next())
                    {
                        String status_text = rs.getString("status_text");
                        String status_img = rs.getString("status_img");
                        System.out.println("Status Image:-----------"+rs.getString("status_img"));
                        String date1 = rs.getString("date1");
                        String time1 = rs.getString("time1");
                                            
                        if(!status_text.equals("") && !status_img.equals(""))
                            {
            %>
        <div class="shadow p-4 mb-5 bg-body rounded">
            <img src="profile-pics/<%= session.getAttribute("session_profile_pic") %>" alt="" class="rounded-5 me-2" style="max-width: 50px" /> <span><%= session.getAttribute("session_name") %>&nbsp<%= session.getAttribute("session_surname") %></span> <span class="small text-secondary" style="float: right"> <%=date1%> [<%=time1%>] </span>
            <div class="row p-3 mt-2 ">
                <p class="post-text d-inline"><%=status_text%></p>
                <p class="hastags post-text d-inline">#Friends #FriendsForever</p>
                <img src="post-pics/<%=status_img%>" height="500px">
            </div>
            <div>
                <a href="#" class="button_icon"><img src="icon_png/like-blue.png" alt=icon height="15px"><small></small> </a>
                <a href="#" class="button_icon"><img src="icon_png/share.png" alt=icon height="15px"><small></small></a>
                <a href="#" class="button_icon"><img src="icon_png/feeling.png" alt=icon height="15px"><small></small></a>
                
                <form action="DeleteStatus" name="delstatus" method="post" class="d-inline">
                    <input type="hidden" value="<%=date1%>" name="date1">
                    <input type="hidden" value="<%=time1%>" name="time1">
                <button type="submit" class="btn btn-danger" id="deleteButton" style="float: right; width:65px; padding:2px 2px 2px 2px">Delete</button>
                </form>
            </div>
        </div>
        <%
        }
            else if(status_text.equals(""))
                {
        %>
        <div class="shadow p-4 mb-5 bg-body rounded">
            <img src="profile-pics/<%= session.getAttribute("session_profile_pic") %>" alt="" class="rounded-5 me-2" style="max-width: 50px" /><%= session.getAttribute("session_name") %>&nbsp<%= session.getAttribute("session_surname") %><span class="small text-secondary" style="float: right"> <%=date1%> [<%=time1%>] </span>
            <div class="row p-3 mt-2 ">
                <img src="post-pics/<%=status_img%>" height="500px">
            </div>
            <div>
                <a href="#" class="button_icon"><img src="icon_png/like.png" alt=ico height="15px"><small></small> </a>
                <a href="#" class="button_icon"><img src="icon_png/share.png" alt=icon height="15px"><small></small></a>
                <a href="#" class="button_icon"><img src="icon_png/feeling.png" alt=icon height="15px"><small></small></a>
                <form action="DeleteStatus" method="post" class="d-inline">
                    <input type="hidden" value="<%=date1%>" name="date1">
                    <input type="hidden" value="<%=time1%>" name="time1">
                <button type="submit" class="btn btn-danger" style="float: right; width:65px; padding:2px 2px 2px 2px">Delete</button>
                </form>            
            </div>
        </div>
        <%
            }
            else if(status_img.equals(""))
            {
        %>
        <div class="shadow p-4 mb-5 bg-body rounded">
            <img src="profile-pics/<%= session.getAttribute("session_profile_pic") %>" alt="" class="rounded-5 me-2" style="max-width: 50px" /><%= session.getAttribute("session_name") %>&nbsp<%= session.getAttribute("session_surname") %><span class="small text-secondary" style="float: right"> <%=date1%> [<%=time1%>] </span>
            <div class="row p-3 mt-2 ">
                <p class="post-text d-inline"><%=status_text%></p>
                <p class="hastags post-text d-inline">#Friends #FriendsForever</p>
            </div>
            <div>
                <a href="#" class="button_icon"><img src="icon_png/like.png" alt=icon height="15px"><small></small> </a>
                <a href="#" class="button_icon"><img src="icon_png/share.png" alt=icon height="15px"><small></small></a>
                <a href="#" class="button_icon"><img src="icon_png/feeling.png" alt=icon height="15px"><small></small></a>
                <form action="DeleteStatus" method="post" class="d-inline">
                    <input type="hidden" value="<%=date1%>" name="date1">
                    <input type="hidden" value="<%=time1%>" name="time1">
                <button type="submit" class="btn btn-danger" style="float: right; width:65px; padding:2px 2px 2px 2px">Delete</button>
                </form>            
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
