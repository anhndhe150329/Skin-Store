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
public class Bill {
    private int[] stock_id;
    private int userId;

    public Bill() {
    }

    public Bill(int[] stock_id, int userId) {
        this.stock_id = stock_id;
        this.userId = userId;
    }

    public int[] getStock_id() {
        return stock_id;
    }

    public void setStock_id(int[] stock_id) {
        this.stock_id = stock_id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }


}
