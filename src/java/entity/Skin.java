/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author User
 */
public class Skin {
    private int stock_id;
    private String skin_name;
    private String type;
    private double price;
    private int userId;
    private String img;
    private String detail;
    private int cat_id;

    public Skin() {
    }

    public Skin(int stock_id, String skin_name, String type, double price, int userId, String img, String detail, int cat_id) {
        this.stock_id = stock_id;
        this.skin_name = skin_name;
        this.type = type;
        this.price = price;
        this.userId = userId;
        this.img = img;
        this.detail = detail;
        this.cat_id = cat_id;
    }

    public int getStock_id() {
        return stock_id;
    }

    public void setStock_id(int stock_id) {
        this.stock_id = stock_id;
    }

    public String getSkin_name() {
        return skin_name;
    }

    public void setSkin_name(String skin_name) {
        this.skin_name = skin_name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }








  
    
}
