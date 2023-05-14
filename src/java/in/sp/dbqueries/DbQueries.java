
package in.sp.dbqueries;

import in.sp.dbconn.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class DbQueries
{
    public static boolean checkEmailExist(String email)
    {
        boolean status = false;
        try(
            Connection con = DbConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("Select * from register where email=?");   
            )
        {
        
            ps.setString(1, email);
            ResultSet rs= ps.executeQuery();
            
            //Checking E-mail
            if(rs.next())
            {
                status = true;
            }
            else
            {
                status = false;
            }
        }
        catch(Exception e)
        {
            status=false;
            e.printStackTrace();
        }
       return status;
    }
    
    public static boolean registerUser(String name, String surname, String username, String email, String pass, String gender, String city, String day, String month, String year)
    {
        boolean status = false;
        String profile_pic="";
        String dob = year+"-"+month+"-"+day ;
        if(gender.equals("Male"))
        {
            profile_pic = "male.png";
        }
        else
        {
            profile_pic = "female.png";
        }
        
        try(
              Connection con = DbConnection.getConnection();
           PreparedStatement ps = con.prepareStatement("insert into register (name, lastname, Username, Email, password,dateofbirth, Gender, city, profile_pic) values(?,?,?,?,?,?,?,?,?)");  
            )
        {
           
           ps.setString(1, name);
           ps.setString(2, surname);
           ps.setString(3, username);
           ps.setString(4, email);
           ps.setString(5, pass);
           ps.setString(6, dob);
           ps.setString(7, gender);
           ps.setString(8, city);
           ps.setString(9, profile_pic);
           
           int i = ps.executeUpdate();
           
           if(i>0)
           {
               status = true;
           }
           else    
           {
               status = false;
           }
        }
        catch(Exception e)
        {
            status=false;
            e.printStackTrace();
        }
        
        return status;
    }
    
    public static ResultSet login(String email, String pass)
    {
        ResultSet rs = null;
       try
       {
            Connection con = DbConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("Select * from register where email=? and password=?");   
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       return rs;
    }
    
    public static ResultSet bio_session(String userid)
    {
        ResultSet rs2 = null;
       try
       {
            Connection con = DbConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("Select * from bio where user_id =?");   
            ps.setString(1, userid);
            rs2 = ps.executeQuery();
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       return rs2;
    }
    
     public static boolean editProfile(String name, String surname, String username, String email, String pass, String day, String month, String year, String gender, String city){
        boolean status = false;
//        String dob = year+"-"+month+"-"+day ;
//        String dob = year + "-" + month + "-" + day;
           
        try(
              Connection con = DbConnection.getConnection();
              PreparedStatement ps = con.prepareStatement("update register set name=?, lastname=?, email=?, password=?, gender=?, city=? where username=?");  
            )
        {
           ps.setString(1, name);
           ps.setString(2, surname);
           ps.setString(3, email);
           ps.setString(4, pass);
           ps.setString(5, gender);
           ps.setString(6, city);
           ps.setString(7, username);
           
           int j = ps.executeUpdate();
           
           if(j>0)
           {
               status = true;
           }
           else    
           {
               status = false;
           }
        }
        catch(Exception e)
        {
            status=false;
            e.printStackTrace();
        }
        
    return status;
    }
     
     
     public static boolean checkbioExist(String userid)
    {
        boolean status = false;
        try(
             Connection con = DbConnection.getConnection();
             PreparedStatement ps = con.prepareStatement("Select * from bio where user_id=?");   
            )
        {
        
            ps.setString(1, userid);
            ResultSet rs= ps.executeQuery();
            
            //Checking E-mail
            if(rs.next())
            {
                status = true;
            }
            else
            {
                status = false;
            }
        }
        catch(Exception e)
        {
            status=false;
            e.printStackTrace();
        }
       return status;
    }
     
     
     
     public static boolean editBio(String about, String workingAt, String studied, String highSchool, String livingAt, String from, String userid)
     {
         boolean status = false;
         try(
              Connection con = DbConnection.getConnection();             
             PreparedStatement ps = con.prepareStatement("insert into bio(user_id, about, workingat, studied, highschool, livingat, from1) values(?,?,?,?,?,?,?)");   
            )
         {
             ps.setString(1, userid);
             ps.setString(2, about);
             ps.setString(3, workingAt);
             ps.setString(4, studied);
             ps.setString(5, highSchool);
             ps.setString(6, livingAt);
             ps.setString(7, from);
             int i = ps.executeUpdate();
           
           if(i>0)
           {
               status = true;
           }
           else    
           {
               status = false;
           }
        }
        catch(Exception e)
        {
            status=false;
            e.printStackTrace();
        }
        
        return status;
    }
     
     
     public static boolean bio(String about, String workingAt, String studied, String highSchool, String livingAt, String from, String userid){
        boolean status = false;
        try(
              Connection con = DbConnection.getConnection();
              PreparedStatement ps = con.prepareStatement("update bio set about=?, workingat=?, studied=?, highSchool=?, livingat=?, from1=? where user_id=?");  
            )
        {
           ps.setString(1, about);
           ps.setString(2, workingAt);
           ps.setString(3, studied);
           ps.setString(4, highSchool);
           ps.setString(5, livingAt);
           ps.setString(6, from);
           ps.setString(7, userid);
           
           int j = ps.executeUpdate();
           
           if(j>0)
           {
               status = true;
           }
           else    
           {
               status = false;
           }
        }
        catch(Exception e)
        {
            status=false;
            e.printStackTrace();
        }
        
    return status;
    }
     
     public static boolean updateProfilePic(String user_id, String attachment_name)
     {
         boolean status = false;
         try
         {
            Connection con = DbConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("update register set profile_pic=? where user_id=?");
            ps.setString(1, attachment_name);
            ps.setString(2, user_id);
//            ps.setString(2, attachment_name);
            int count = ps.executeUpdate();
            if (count>0)
            {
                status = true;
            }
            else
            {
                status= false;
            }
         }
         catch(Exception e)
         {
             status = false;
             e.printStackTrace();
         }
         return status;
     }
     
    public static boolean uploadstatus(String email, String status_text, String status_img, String date1, String time1)
    {
        boolean status = false;
        try
        {
            Connection con = DbConnection.getConnection();
            
            PreparedStatement ps = con.prepareStatement("insert into status values(?,?,?,?,?)");
            ps.setString(1, email);
            ps.setString(2, status_text);
            ps.setString(3, status_img);
            ps.setString(4, date1);
            ps.setString(5, time1);
            
            int count = ps.executeUpdate();
            if(count > 0)
            {
                status = true;
            }
            else
            {
                status = false;
            }
        }
        catch(Exception e)
        {
            status = false;
            e.printStackTrace();
        }
        
        return status;
    }
    
    public static ResultSet getstatusOfUser(String email)
    {
        ResultSet rs=null;
        try
        {
            Connection con = DbConnection.getConnection();
            
            PreparedStatement ps = con.prepareStatement("SELECT * from status WHERE email=? ORDER BY date1 DESC, time1 DESC");
            ps.setString(1, email);
            
            rs = ps.executeQuery();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return rs;
    }
    
    public static ResultSet getstatusOfall()
    {
        ResultSet rs=null;
        try
        {
            Connection con = DbConnection.getConnection();
            
            PreparedStatement ps = con.prepareStatement("SELECT status.*, register.name, register.lastname, register.profile_pic FROM status JOIN register ON status.email = register.email ORDER BY STR_TO_DATE(CONCAT(date1, ' ', time1), '%d %M, %Y %H:%i:%s') DESC;");
            
            rs = ps.executeQuery();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return rs;
    }
    
    public static boolean deleteStatus(String email, String date1, String time1)
    {
        boolean status = false;
        try
        {
            Connection con = DbConnection.getConnection();
            
            PreparedStatement ps = con.prepareStatement("delete from status where email=? and date1=? and time1=?");
            ps.setString(1, email);
            ps.setString(2, date1);
            ps.setString(3, time1);
            
            int count = ps.executeUpdate();
            if(count > 0)
            {
                status = true;
            }
            else
            {
                status = false;
            }
        }
        catch(Exception e)
        {
            status = false;
            e.printStackTrace();
        }
        return status;
    }
}


