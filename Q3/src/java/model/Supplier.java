package model;

import java.util.Date;

public class Supplier {
    private String code;
    private String name;
    private Date dob; // Ngày sinh
    private String gender;
    private String address;

    // Constructor
    public Supplier(String code, String name, Date dob, String gender, String address) {
        this.code = code;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    
}