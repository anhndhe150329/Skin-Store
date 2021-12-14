/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fu.prj301.project;

import entity.Bill;
import entity.Category;
import entity.History;
import entity.Skin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 *
 * @author User
 */
public class SkinDAO {

    private Connection conn;
    private Statement stmt;
    private ResultSet rs;
    private PreparedStatement ps;

    public int count(String skinname) throws Exception {
        try {
            String query = "select count(*) from dbo.Stock where skin_name like ?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + skinname + "%");
            rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public List<Skin> search(String skinname, int pageIndex, int pageSize) throws Exception {
        try {
            List<Skin> list = new ArrayList<>();
            String query = "select * from (select ROW_NUMBER() over (order by stock_id) as STT,* from Stock \n"
                    + "where skin_name like ? ) as x where STT between (?-1)*?+1 and ?*?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + skinname + "%");
            ps.setInt(2, pageIndex);
            ps.setInt(3, pageSize);
            ps.setInt(4, pageIndex);
            ps.setInt(5, pageSize);
            rs = ps.executeQuery();
            while (rs.next()) {
                Skin skin = new Skin(rs.getInt("stock_id"),
                        rs.getString("skin_name"), rs.getString("type"), rs.getDouble("price"),
                         rs.getInt("userId"), rs.getString("image"), rs.getString("attribute"), rs.getInt("category_id"));
                list.add(skin);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public List<Category> getAllCategory() throws Exception {
        try {
            List<Category> list = new ArrayList<Category>();
            String query = "select * from dbo.Categories";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Category cate = new Category(rs.getInt("category_id"), rs.getString("skin_type"));
                list.add(cate);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public List<Skin> getSkinByCID(int cid, int pageIndex, int pageSize) throws Exception {
        List<Skin> list = new ArrayList<Skin>();
        String query = "select* from (select ROW_NUMBER() over (order by stock_id) as STT,* from Stock where category_id = ?) as x"
                + " where STT between (?-1)*?+1 and ?*?";
        try {
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            ps.setInt(2, pageIndex);
            ps.setInt(3, pageSize);
            ps.setInt(4, pageIndex);
            ps.setInt(5, pageSize);
            rs = ps.executeQuery();
            while (rs.next()) {
                Skin skin = new Skin(rs.getInt("stock_id"),
                        rs.getString("skin_name"), rs.getString("type"), rs.getDouble("price"),
                         rs.getInt("userId"), rs.getString("image"), rs.getString("attribute"), rs.getInt("category_id"));
                list.add(skin);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }
    public List<Skin> getUserStock(int userId, int pageIndex, int pageSize) throws Exception {
        List<Skin> list = new ArrayList<Skin>();
        String query = "select* from (select ROW_NUMBER() over (order by stock_id) as STT,* from Stock where userId = ?) as x"
                + " where STT between (?-1)*?+1 and ?*?";
        try {
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setInt(2, pageIndex);
            ps.setInt(3, pageSize);
            ps.setInt(4, pageIndex);
            ps.setInt(5, pageSize);
            rs = ps.executeQuery();
            while (rs.next()) {
                Skin skin = new Skin(rs.getInt("stock_id"),
                        rs.getString("skin_name"), rs.getString("type"), rs.getDouble("price"),
                         rs.getInt("userId"), rs.getString("image"), rs.getString("attribute"), rs.getInt("category_id"));
                list.add(skin);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }
    public Skin getSkinByStock_id(int stock_id) throws Exception {
        try {
            String query = "select * from Stock where stock_id = ?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setInt(1, stock_id);
            rs = ps.executeQuery();
            Skin skin = new Skin();
            while (rs.next()) {
                skin = new Skin(rs.getInt("stock_id"),
                        rs.getString("skin_name"), rs.getString("type"), rs.getDouble("price"),
                         rs.getInt("userId"), rs.getString("image"), rs.getString("attribute"), rs.getInt("category_id"));
            }
            return skin;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public void deleteStock(int stock_id) throws Exception {
        try {
            String query = "delete from dbo.Stock where stock_id=?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setInt(1, stock_id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public void deleteBill(int stock_id) throws Exception {
        try {
            String query = "delete from dbo.Bill where stock_id=?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setInt(1, stock_id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public void add(Skin skin, int userId) throws Exception {
        try {
            String query1 = "select max(stock_id) from dbo.Stock";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query1);
            rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            String query2 = "insert into dbo.Stock (stock_id,category_id,[type],skin_name,price,userId,image,attribute) values (?,?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(query2);
            ps.setInt(1, count + 1);
            ps.setInt(2, skin.getCat_id());
            ps.setString(3, skin.getType());
            ps.setString(4, skin.getSkin_name());
            ps.setDouble(5, skin.getPrice());
            ps.setInt(6, userId);
            ps.setString(7, skin.getImg());
            ps.setString(8, skin.getDetail());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public void deleteByUser(int stock_id, int userId) throws Exception {
        String query = "delete from dbo.Stock where userId=? and stock_id=?";
        try {
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setInt(2, stock_id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public List<Integer> getAllHistory(int userId) throws Exception {
        try {
            List<Integer> list = new ArrayList<Integer>();
            String query = "select H_id from dbo.History where userId=?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(rs.getInt("H_id"));
            }
            return list;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public void add(int userId, int stock_id) throws Exception {
        try {
            conn = DBConnection.open();
            String query2 = "insert into dbo.Bill (userId,stock_id) values (?,?)";
            ps = conn.prepareStatement(query2);
            ps.setInt(1, userId);
            ps.setInt(2, stock_id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public void removeFromBill(int userId, int stock_id) throws Exception {
        try {
            String query2 = "delete from dbo.Bill where userId=? and stock_id=?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query2);
            ps.setInt(1, userId);
            ps.setInt(2, stock_id);
            ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public int billCount(int userId) throws Exception {
        try {
            conn = DBConnection.open();
            String query = "select count(*) from dbo.bill where userId=?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public Bill getCart(int userId, int size) throws Exception {
        try {
            conn = DBConnection.open();
            String query = "select * from dbo.Bill where userId=?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            int i = 0;
            int[] stock_id = new int[size];
            while (rs.next()) {
                stock_id[i] = rs.getInt("stock_id");
                i++;
            }
            Bill bill = new Bill(stock_id, userId);
            return bill;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.close(conn, stmt);
        }
        return null;
    }

    public int catCount(int cid) throws Exception {
        try {
            String query = "select count(*) from dbo.Stock"
                    + " where category_id=?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public int userStockCount(int userId) throws Exception {
        try {
            String query = "select count(*) from dbo.Stock"
                    + " where userId=?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public void hisAdd(int userId, Skin skin, double cost) throws Exception {
        try {
            String query1 = "select max(H_id) from dbo.History";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query1);
            rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            String query2 = "insert into dbo.History (H_id,userId,skin_name,[image],[type],sellDate,price) values (?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(query2);
            ps.setInt(1, count + 1);
            ps.setInt(2, userId);
            ps.setString(3, skin.getSkin_name());
            ps.setString(4, skin.getImg());
            ps.setString(5, skin.getType());
            ps.setDate(6, java.sql.Date.valueOf(java.time.LocalDate.now()));
            ps.setDouble(7, cost);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

    public List<History> getHis(int userId) throws Exception {
        List<History> list = new ArrayList<History>();
        try {
            String query = "select * from dbo.History where userId=?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new History(rs.getInt("H_id"), rs.getInt("userId"), rs.getString("skin_name"),
                         rs.getString("image"), rs.getString("type"), rs.getDate("sellDate"), rs.getDouble("price")));
            }
            return list;
        } catch (Exception e) {
            throw e;
        } finally {
            DBConnection.close(conn, stmt);
        }
    }

}
