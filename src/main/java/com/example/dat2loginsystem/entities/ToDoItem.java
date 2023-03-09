package com.example.dat2loginsystem.entities;

public class ToDoItem {

    private String title;
    private String description;
    private long timeCreated;

    public ToDoItem(String title, String description, long timeCreated) {
        this.title = title;
        this.description = description;
        this.timeCreated = timeCreated;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getTimeCreated() {
        return this.timeCreated;
    }

    public void setTimeCreated(long timeCreated) {
        this.timeCreated = timeCreated;
    }
}