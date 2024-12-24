/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Order {
    private int id;
    private String date;
    private int cid;
    private double totalmoney;

    public Order() {
    }

    public Order(int id, String date, int cid, double totalmoney) {
        this.id = id;
        this.date = date;
        this.cid = cid;
        this.totalmoney = totalmoney;
    }
    
}
