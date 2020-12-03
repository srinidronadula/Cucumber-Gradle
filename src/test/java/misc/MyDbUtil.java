
package misc;
import java.sql.*;

public class MyDbUtil
{
    private static String dbUrl = "jdbc:sqlserver://192.168.1.92\\MSSQLSERVER;DatabaseName=karatedb;";
    //String sa=

    public static String selectStatement(String stmt)
    {
        try
        {
            Connection con = DriverManager.getConnection(dbUrl,"sa", "sqladmin@123");
            ResultSet rs = con.createStatement().executeQuery(stmt);
            String res = "";

            while (rs.next())
            {
                for(int i=1; i<=rs.getMetaData().getColumnCount(); i++) {
                    res += rs.getString(i).toString() + ",";
                }
                res += "\n";
            }
            rs.close();
            con.close();
            return res;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return "";
        }
    }

    public static String insertStatement(String stmt)
    {
        try
        {
            Connection con = DriverManager.getConnection(dbUrl,"sa", "sqladmin@123");
            con.createStatement().execute(stmt);
            con.close();
            return "Success";
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return "Exception: " + e.getMessage();
        }
    }

    public static int updateStatement(String stmt)
    {
        return executeUpdateDeleteStmt(stmt);
    }

    public static int deleteStatement(String stmt)
    {
        return executeUpdateDeleteStmt(stmt);
    }

    private static int executeUpdateDeleteStmt(String stmt)
    {
        try
        {
            Connection con = DriverManager.getConnection(dbUrl,"sa", "sqladmin@123");
            int rowsAffected = con.createStatement().executeUpdate(stmt);
            con.close();
            return rowsAffected;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return -1;
        }
    }
}
