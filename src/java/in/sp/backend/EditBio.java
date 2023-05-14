
package in.sp.backend;

import com.mysql.cj.Session;
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
public class EditBio extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("user_id1");
        String about = request.getParameter("about1");
        String workingAt = request.getParameter("workingat1");
        String studied = request.getParameter("studied1");
        String highSchool = request.getParameter("highschool1");
        String livingAt = request.getParameter("livingat1");
        String from = request.getParameter("from1");
        boolean status = DbQueries.checkbioExist(userid);
        if(status)
        {
            HttpSession session = request.getSession();
                session.setAttribute("session_about", about);
                session.setAttribute("session_workingat", workingAt);
                session.setAttribute("session_studied", studied);
                session.setAttribute("session_highschool", highSchool);
                session.setAttribute("session_livingat", livingAt);
                session.setAttribute("session_from", from);
            boolean status2 = DbQueries.bio(about, workingAt, studied, highSchool, livingAt, from, userid);
            if(status2)
            {
                session.setAttribute("session_about", about);
                session.setAttribute("session_workingat", workingAt);
                session.setAttribute("session_studied", studied);
                session.setAttribute("session_highschool", highSchool);
                session.setAttribute("session_livingat", livingAt);
                session.setAttribute("session_from", from);
                
//                PrintWriter out = response.getWriter();
//                out.print("<div class=\"bg-body-secondary ep-container\">");
//                RequestDispatcher rd1 = request.getRequestDispatcher("navigation.jsp");
//                rd1.include(request, response);
//                out.print("<div class=\"container\">");
//                RequestDispatcher rd2 = request.getRequestDispatcher("editProfileform.jsp");
//                rd2.include(request, response);
//                request.setAttribute("success_message", "Bio updated successfully");
//                RequestDispatcher rd3 = request.getRequestDispatcher("success.jsp");
//                rd3.include(request, response);
//                RequestDispatcher rd4 = request.getRequestDispatcher("editBioForm.jsp");
//                rd4.include(request, response);
//                out.print("</div>");
//                out.print("</div>");
                response.sendRedirect("editProfile.jsp");
            }
            else
            {
                response.sendRedirect("index.jsp");
            }
        }
        else
        {
        Boolean status3 = DbQueries.editBio(about, workingAt, studied, highSchool, livingAt, from, userid);
        if(status3)
        {
                HttpSession session = request.getSession();
                session.setAttribute("session_about", about);
                session.setAttribute("session_workingat", workingAt);
                session.setAttribute("session_studied", studied);
                session.setAttribute("session_highschool", highSchool);
                session.setAttribute("session_livingat", livingAt);
                session.setAttribute("session_from", from);
            
//            PrintWriter out = response.getWriter();
//            out.print("<div class=\"bg-body-secondary ep-container\">");
//                RequestDispatcher rd1 = request.getRequestDispatcher("navigation.jsp");
//                rd1.include(request, response);
//                out.print("<div class=\"container\">");
//                RequestDispatcher rd2 = request.getRequestDispatcher("editProfileform.jsp");
//                rd2.include(request, response);
//                request.setAttribute("success_message", "Bio updated successfully");
//                RequestDispatcher rd3 = request.getRequestDispatcher("success.jsp");
//                rd3.include(request, response);
//                RequestDispatcher rd4 = request.getRequestDispatcher("editBioForm.jsp");
//                rd4.include(request, response);
//                out.print("</div>");
//                out.print("</div>");
                response.sendRedirect("editProfile.jsp");
        }
        else
        {
            response.sendRedirect("index.jsp");
        }
    }
    
}
}

    