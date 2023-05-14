
package in.sp.dbconn;

import in.sp.backend.Register;
import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection
{
    static Connection con;
    public static Connection getConnection()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FriendsBook", "root", "mysql");
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
