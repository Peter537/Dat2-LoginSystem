package com.example.dat2loginsystem.entities;

import java.text.SimpleDateFormat;

public class ToDoItem {

    private static final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

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

    public String getFormattedTime() {
        return simpleDateFormat.format(this.timeCreated);
    }
}