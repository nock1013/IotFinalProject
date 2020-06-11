package com.project.platooning.control;
import android.os.Parcel;
import android.os.Parcelable;
public class CarItem implements Parcelable {
    private String carnum;
    private int position;
    private int velocity;
    private int distance;
    private float battery;
    private double temperature;
    @Override
    public String toString() {
        return  "carnum/" + carnum +
                "/velocity/" + velocity +
                "/distance/" + distance +
                "/battery/" + battery +
                "/temperature/" + temperature;
    }
    public CarItem(){};
    public CarItem(String carnum,int temperature){};
    public CarItem(String carnum, int velocity, int distance, float battery, double temperature, int position) {
        this.carnum = carnum;
        this.velocity = velocity;
        this.distance = distance;
        this.battery = battery;
        this.temperature = temperature;
        this.position = position;
    }
    protected CarItem(Parcel in){
        this.carnum = in.readString();
        this.velocity = in.readInt();
        this.distance = in.readInt();
        this.battery = in.readFloat();
        this.temperature = in.readDouble();
        this.position = in.readInt();
    }
    public static final Creator<CarItem> CREATOR = new Creator<CarItem>() {
        @Override
        public CarItem createFromParcel(Parcel source) {
            return new CarItem(source);
        }
        @Override
        public CarItem[] newArray(int size) {
            return new CarItem[size];
        }
    };
    public String getCarnum() {
        return carnum;
    }
    public void setCarnum(String carnum) {
        this.carnum = carnum;
    }
    public int getVelocity() {
        return velocity;
    }
    public void setVelocity(int velocity) {
        this.velocity = velocity;
    }
    public int getDistance() {
        return distance;
    }
    public void setDistance(int distance) {
        this.distance = distance;
    }
    public float getBattery() {
        return battery;
    }
    public void setBattery(float battery) {
        this.battery = battery;
    }
    public double getTemperature() {
        return temperature;
    }
    public void setTemperature(double temperature) {
        this.temperature = temperature;
    }
    public int getPosition() {
        return position;
    }
    public void setPosition(int position) {
        this.position = position;
    }
    @Override
    public int describeContents() {
        return 0;
    }
    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(carnum);
        dest.writeInt(position);
        dest.writeInt(velocity);
        dest.writeInt(distance);
        dest.writeFloat(battery);
        dest.writeDouble(temperature);
    }
}










