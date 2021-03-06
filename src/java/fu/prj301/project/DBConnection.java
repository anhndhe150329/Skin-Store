/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fu.prj301.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author KienLT
 */
public class DBConnection {

    public static Connection open() {
        try {
            //1. Đăng ký driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //2. Tạo và mở kết nối
            return DriverManager.getConnection("jdbc:sqlserver://DESKTOP-6BMF6G2:1433;databaseName=SkinStore","sa","12345678");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void close(Connection conn, Statement stmt) {
        try {
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
