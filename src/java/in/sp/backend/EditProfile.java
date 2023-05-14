/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.sp.backend;

import in.sp.dbqueries.DbQueries;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mayank
 */
public class EditProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String name = request.getParameter("name1");
        String surname = request.getParameter("surname1");
        String username = request.getParameter("username1");
        String email = request.getParameter("email1");
        String pass = request.getParameter("pass1");
        String day = request.getParameter("day1");
        String month = request.getParameter("month1");
        String year = request.getParameter("year1");
        String gender = request.getParameter("gender1");
        String city = request.getParameter("city1");

        
        
        boolean status = DbQueries.editProfile(name, surname, username, email, pass, day, month, year, gender, city);
        if(status)
        {
            HttpSession session = request.getSession();
                session.setAttribute("session_name", name);
                session.setAttribute("session_surname", surname);
                session.setAttribute("session_username", username);
                session.setAttribute("session_email", email);
                session.setAttribute("session_gender ", gender);
                session.setAttribute("session_city ", city);
//              session.setAttribute("Session_profile_pic", "");
                
//                PrintWriter out = response.getWriter();
//                RequestDispatcher rd1 = request.getRequestDispatcher("navigation.jsp");
//                rd1.include(request, response);
//                out.print("<div class=\"bg-body-secondary ep-container\">");
//                out.print("<div class=\"container\">");
//                request.setAttribute("success_message", "Profile updated successfully");
//                RequestDispatcher rd3 = request.getRequestDispatcher("success.jsp");
//                rd3.include(request, response);
//                RequestDispatcher rd2 = request.getRequestDispatcher("editProfileform.jsp");
//                rd2.include(request, response);
//                RequestDispatcher rd4 = request.getRequestDispatcher("editBioForm.jsp");
//                rd4.include(request, response);
//                out.print("</div>");
//                out.print("</div>");
                response.sendRedirect("editProfile.jsp");
                
        }
        else
        {
//            request.setAttribute("error_message", "Something went Wrong");
//            RequestDispatcher rd1 = request.getRequestDispatcher("error.jsp");
//            rd1.include(request, response);
//            RequestDispatcher rd2 = request.getRequestDispatcher("Home.jsp");
//            rd2.include(request, response);
            response.sendRedirect("Home.jsp");
        }
    }
    
}
