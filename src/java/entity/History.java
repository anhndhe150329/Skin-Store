/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author User
 */
public class History {
    private int H_id;
    private int userId;
    private String skin_name;
    private String image;
    private String type;
    private Date sellDate;
    private double price;

    public History() {
    }

    public History(int H_id, int userId, String skin_name, String image, String type, Date sellDate, double price) {
        this.H_id = H_id;
        this.userId = userId;
        this.skin_name = skin_name;
        this.image = image;
        this.type = type;
        this.sellDate = sellDate;
        this.price = price;
    }

    public int getH_id() {
        return H_id;
    }

    public void setH_id(int H_id) {
        this.H_id = H_id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getSkin_name() {
        return skin_name;
    }

    public void setSkin_name(String skin_name) {
        this.skin_name = skin_name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getSellDate() {
        return sellDate;
    }

    public void setSellDate(Date sellDate) {
        this.sellDate = sellDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }


}
