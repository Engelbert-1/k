/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Train {
    String code, name, dob;
    int num;

    public Train() {
    }

    public Train(String code, String name, int num) {
        this.code = code;
        this.name = name;
        this.num = num;
    }

    public String getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    public int getNum() {
        return num;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNum(int num) {
        this.num = num;
    }
    
    
     
    
}
