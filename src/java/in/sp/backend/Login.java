package in.sp.backend;

import javax.servlet.RequestDispatcher;
import in.sp.dbqueries.DbQueries;
import java.io.IOException;
import java.sql.ResultSet;
import java.text.DateFormatSymbols;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sun.security.pkcs11.wrapper.Functions;

/**
 *
 * @author Mayank
 */
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String email = request.getParameter("email1");
        String pass = request.getParameter("pass1");
        
        ResultSet rs =  DbQueries.login(email, pass);
        HttpSession session= request.getSession();
        try
        {
            if(rs.next())
            {
                session.setAttribute("session_name", rs.getString("name"));
                session.setAttribute("session_surname", rs.getString("lastname"));
                session.setAttribute("session_username", rs.getString("username"));
                session.setAttribute("session_email", email);
                session.setAttribute("session_gender", rs.getString("gender"));
                session.setAttribute("session_user_id", rs.getString("user_id"));
                System.out.println(session.getAttribute("session_user_id"));
                String name5 = (String)session.getAttribute("session_name");

                
                session.setAttribute("session_dob", rs.getString("dateofbirth"));
                String[] parts = rs.getString("dateofbirth").split("-"); 
                int year = Integer.parseInt(parts[0]);
                int monthNum = Integer.parseInt(parts[1]);
                int day = Integer.parseInt(parts[2]);

                DateFormatSymbols dfs = new DateFormatSymbols();
                String[] months = dfs.getMonths();
                String month = months[monthNum - 1];
                session.setAttribute("day", day);
                session.setAttribute("month", month);
                session.setAttribute("year", year);
                session.setAttribute("session_city", rs.getString("city"));
                session.setAttribute("session_profile_pic", rs.getString("profile_pic"));
                
                
                
//                request.setAttribute("success_message", "welcome back "+name5);
//                RequestDispatcher rd1 = request.getRequestDispatcher("success.jsp");
//                rd1.include(request, response);
//                RequestDispatcher rd2 = request.getRequestDispatcher("Home.jsp");
//                rd2.include(request, response);
                  response.sendRedirect("Home.jsp");
                  
                String user_id = (String) session.getAttribute("session_user_id");
                System.out.println(user_id);
                ResultSet rs2 = DbQueries.bio_session(user_id);
                try
                {
                   if(rs2.next())
                   {
                       
                       session.setAttribute("session_about", rs2.getString("about"));
                       session.setAttribute("session_workingat", rs2.getString("workingat"));
                       session.setAttribute("session_studied", rs2.getString("studied"));
                       session.setAttribute("session_highschool", rs2.getString("highschool"));
                       session.setAttribute("session_livingat", rs2.getString("livingAt"));
                       session.setAttribute("session_from", rs2.getString("from1"));
                   } 
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
            }
            else
            {
                request.setAttribute("error_message", "Email id or password didnt match");
                RequestDispatcher rd1= request.getRequestDispatcher("error.jsp");
                rd1.include(request, response);
                
                RequestDispatcher rd2= request.getRequestDispatcher("index.jsp");
                rd2.include(request, response);
                
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
      
    
}
