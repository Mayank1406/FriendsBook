<%-- 
    Document   : writePost
    Created on : 14 Apr, 2023, 3:02:50 AM
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
        <div class="shadow px-4 pt-4 pb-4 mb-5 bg-body rounded">
            <img src="profile-pics/<%= session.getAttribute("session_profile_pic") %>" alt="" class="rounded-5 me-2" style="max-width: 50px" /><%= session.getAttribute("session_name") %>&nbsp<%= session.getAttribute("session_surname") %>
            <select id="mode" name="mode1" data-toggle="tooltip" class="border-0 writepost-mode" data-bs-placement="bottom" title="Select mode">
                <option value="public" data-toggle="tooltip"  data-bs-placement="bottom" title="Anybody can see">public</option>
                <option value="Only share with Friendlist" data-toggle="tooltip"  data-bs-placement="bottom" title="Only People in Friendlist">Only.... share with Friendlist</option>
                <option value="private" data-toggle="tooltip"  data-bs-placement="bottom" title="Nobody can see">private</option>
            </select>
            <form action="UploadStatus" method="post" enctype="multipart/form-data">
            <div class="row p-3 mb-4 mt-2 bg-body rounded text-area-div">
                <input type="text-area" name="status_text" class="border-0 text-area-post" placeholder="What's on your mind, <%= session.getAttribute("session_name") %>?"><br /> <br />
            </div>
            
<!--            <div class="row p-3 mb-4 mt-2 bg-body text-area-hastags">
                <input type="text-area" name="" class="border-0 text-area-post" placeholder="Hastags"><br /> <br />
            </div>-->
            
            <div>
                <input type="file" name="status_img" class="pb-3">
            </div>
            <div>
                <a href="#" class="button_icon"><img src="icon_png/live-video.png" alt=icon height="15px"><small>live video</small> </a>
                <a href="#" class="button_icon"><img src="icon_png/photo.png" alt=icon height="15px"><small>Photo/Video</small></a>
                <a href="#" class="button_icon"><img src="icon_png/feeling.png" alt=icon height="15px"><small>Feeling/Activity</small></a>
                <button type="submit" value="Post" class="btn btn-info" style="float: right">Post</button>
            </div>
            </form>
        </div>
        
            
    </body>
</html>
