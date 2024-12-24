package model;

import java.util.Date;

public class Student {
    String id;
    String name;
    Date dob;
    boolean gender;  
    String address;

    // Default constructor
    public Student() {
    }

    // Parameterized constructor
    public Student(String id, String name, Date dob, boolean gender, String address) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
    }

    // Getters and setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
