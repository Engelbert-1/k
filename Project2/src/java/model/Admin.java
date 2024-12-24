package model;

public class Admin {
    private String username;
    private String password;
    private int role;

    public Admin(String username, String password, int role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public int getRole() {
        return role;
    }
}