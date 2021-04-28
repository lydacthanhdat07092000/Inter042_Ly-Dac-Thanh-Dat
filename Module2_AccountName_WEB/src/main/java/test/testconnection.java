package test;

import org.omg.PortableInterceptor.USER_EXCEPTION;

import javax.xml.transform.Result;
import java.sql.*;

public class testconnection {
    private static String DB_URL = "jdbc:mysql://localhost:3306/furama";
    private static String USER_NAME = "root";
    private static String PASSWORD = "07092000";

    public static void main(String[] args) throws SQLException {
        Connection conn = null;
        try {

            conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);

            Statement stmt = conn.createStatement();

            ResultSet rs = stmt.executeQuery("select * from role");

            while (rs.next()){
                System.out.println(rs.getInt(1) + "" + rs.getString(2));
            }

        } catch (Exception ex){
            ex.printStackTrace();
        }  finally{
            conn.close();
    }
}
        public static Connection getConnection(String DB_URL, String USER_NAME, String PASSWORD){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            System.out.println("connect successfully");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("connect failure");
        }
        return conn;
        }
}
