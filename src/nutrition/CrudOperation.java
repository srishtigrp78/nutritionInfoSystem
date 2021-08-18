package nutrition;
import java.sql.*;
public class CrudOperation {

private static Connection con=null;
public static Connection createConnection()
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrition","root","root");
	}
catch(ClassNotFoundException | SQLException cse)
	{
	System.out.println(cse);
	}
return con;
}

}
