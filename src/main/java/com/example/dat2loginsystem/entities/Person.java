package com.example.dat2loginsystem.entities;

import java.util.ArrayList;

public class Person {

    private final String name;
    private final ArrayList<ToDoItem> toDoList = new ArrayList<>();

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

    public ArrayList<ToDoItem> getToDoList() {
        return this.toDoList;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public void addToDoListItem(ToDoItem toDoListItem) {
        this.toDoList.add(toDoListItem);
    }

    public void removeToDoListItem(ToDoItem toDoListItem) {
        this.toDoList.remove(toDoListItem);
    }
}