package com.example.dat2loginsystem.entities;

public class Person {

    private final String name;
    private String password;
    private String role;

    public Person(String name, String password) {
        this.name = name;
        this.password = password;
        this.role = "User";
    }

    public Person(String name, String password, String role) {
        this.name = name;
        this.password = password;
        this.role = role;
    }

    public String getName() {
        return this.name;
    }

    public String getPassword() {
        return this.password;
    }

    public String getRole() {
        return this.role;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }
}