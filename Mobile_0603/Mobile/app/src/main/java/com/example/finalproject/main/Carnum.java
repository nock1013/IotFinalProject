package com.example.finalproject.main;

public class Carnum {
    String carnum;
    String status;
    String savedate;
    boolean selected;

    public Carnum(){

    }

    public Carnum(String carnum, String status, String savedate, boolean selected) {
        this.carnum = carnum;
        this.status = status;
        this.savedate = savedate;
        this.selected = false;
    }

    public String getCarnum() {
        return carnum;
    }

    public void setCarnum(String carnum) {
        this.carnum = carnum;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSavedate() {
        return savedate;
    }

    public void setSavedate(String savedate) {
        this.savedate = savedate;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
}
