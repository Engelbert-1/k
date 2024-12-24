/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Account {
     private int id;
    private String user, pass;
    private int admin;
    private String email;

    public Account() {
    }

    public Account(int id, String user, String pass, int admin, String email) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.admin = admin;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getAdmin() {
        return admin;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", user=" + user + ", pass=" + pass + ", admin=" + admin + ", email=" + email + '}';
    }

   
    
}
