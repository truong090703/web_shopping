package cn.techtutorial.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
    private static Connection connection = null;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (connection == null) {
            // Sử dụng driver JDBC cho SQL Server
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            // Cập nhật URL, tên người dùng và mật khẩu của bạn
            String url = "jdbc:sqlserver://localhost:1401;databaseName=ecommerce_cart";
            String user = "sa";
            String password = "truong0907";
            
            connection = DriverManager.getConnection(url, user, password);
            System.out.print("connected");
        }
        return connection;
    }
}