
package in.sp.backend;

import in.sp.dbqueries.DbQueries;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Register extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
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
        
        boolean status = DbQueries.checkEmailExist(email);
        if(status)
        {
            request.setAttribute("error_message", "Email already exist in the database");
            RequestDispatcher rd1= request.getRequestDispatcher("error.jsp");
            rd1.include(request, response);
            RequestDispatcher rd2= request.getRequestDispatcher("register.jsp");
            rd2.include(request, response);
        }
        else
        {
            boolean status2 = DbQueries.registerUser(name, surname, username, email, pass, gender, city, day, month, year);
            if(status2)
            {
                HttpSession session = request.getSession();
                session.setAttribute("session_name", name);
                session.setAttribute("session_surname", surname);
                session.setAttribute("session_username", username);
                session.setAttribute("session_email", email);
                session.setAttribute("session_gender ", gender);
                session.setAttribute("session_city ", city);
                if(gender.equals("Male"))
                {
                    session.setAttribute("Session_profile_pic", "male.png");
                }
                else
                {
                    session.setAttribute("Session_profile_pic", "female.png");
                }
                
                request.setAttribute("success_message", "created account Successfully");
                RequestDispatcher rd1 = request.getRequestDispatcher("success.jsp");
                rd1.include(request, response);
                RequestDispatcher rd2 = request.getRequestDispatcher("index.jsp");
                rd2.include(request, response);
            }
            else
            {
                request.setAttribute("error_message", "Try again after sometime...");
                RequestDispatcher rd1 = request.getRequestDispatcher("error.jsp");
                rd1.include(request, response);
                RequestDispatcher rd2 = request.getRequestDispatcher("register.jsp");
                rd2.include(request, response);
            }
        }
        
        
    }
}


