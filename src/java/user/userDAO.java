/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import fu.prj301.project.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus
 */
public class userDAO {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private Statement stmt;

    public userDAO() {
    }

    public List<User> getUsers() {
        List<User> list = new ArrayList<>();
        try {
            conn = DBConnection.open();
            String sql = "Select * from [SkinStore].[dbo].[User]";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("userId"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setFirstName(rs.getString("First Name"));
                user.setLastName(rs.getString("Last Name"));
                user.setDOB(rs.getDate("DOB"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setAddress(rs.getString("Address"));
                user.setCash(rs.getDouble("cash"));
                user.setPermission(rs.getBoolean("permission"));
                list.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(userDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, stmt);
        }
        return list;
    }

    public User getUser(int userId) {
        try {
            conn = DBConnection.open();
            String sql = "select * from [SkinStore].[dbo].[User] where userId = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("userId"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setFirstName(rs.getString("First Name"));
                user.setLastName(rs.getString("Last Name"));
                user.setDOB(rs.getDate("DOB"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setAddress(rs.getString("Address"));
                user.setCash(rs.getDouble("cash"));
                user.setPermission(rs.getBoolean("permission"));
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(userDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, stmt);
        }
        return null;
    }

    public void addUser(User user) {
        try {
            String query1 = "select max(userId) from dbo.[User]";           
            conn = DBConnection.open();
            ps = conn.prepareStatement(query1);
            rs = ps.executeQuery(); 
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            String sql = "insert into [User] (userId,username, [password], [First Name], [Last Name], DOB, phone, email, [Address],cash,permission) values (?,?,?,?,?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, count+1);
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getFirstName());
            ps.setString(5, user.getLastName());
            ps.setDate(6, user.getDOB());
            ps.setString(7, user.getPhone());
            ps.setString(8, user.getEmail());
            ps.setString(9, user.getAddress());
            ps.setDouble(10, user.getCash());
            ps.setInt(11, 0);
            ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(userDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
            DBConnection.close(conn, stmt);
        }
    }

    public void EditUser(User user) {
        try {
        conn = DBConnection.open();
        String sql = "Update [User] set \n"
                + "[First Name] = '" + user.getFirstName() + "',\n"
                + "[Last Name] = '" + user.getLastName() + "',\n"
                + "DOB = '" + user.getDOB() + "',\n"
                + "phone = '" + user.getPhone() + "',\n"
                + "email = '" + user.getEmail() + "',\n"
                + "[Address] = '" + user.getAddress() + "'\n"
                + "where userId = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, user.getUserId());
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(userDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, stmt);
        }
    }
    public void addFunds(User user,double cash) throws Exception{
        String query="update dbo.[User] set cash=? where userId=?";
            try {
            conn=DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setDouble(1,user.getCash()+cash);
            ps.setInt(2, user.getUserId());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }
    
    public void EditPassUser(User user){
        try {
        conn = DBConnection.open();
        String sql = "Update [User] set \n"
                + "[password] = '" + user.getPassword()+ "'\n"
                + "where userId = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, user.getUserId());
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(userDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, stmt);
        }
    }
    
    public void DeleteUser(int userId){
        try {
            conn = DBConnection.open();
            String sql = "delete [User] where userId = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1,userId);
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(userDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
            DBConnection.close(conn, stmt);
        }
    }
    
}
