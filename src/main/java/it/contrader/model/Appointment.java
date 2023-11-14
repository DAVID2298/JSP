package it.contrader.model;

import java.util.Date;
import java.util.TimeZone;

public class Appointment {

    private int id;

    private String date;

    private String hour;

    private double cost;

    private boolean demand;

    private int user_id;
    private int id_ME;

    public Appointment(int id, String date, String hour, double cost, boolean demand, int user_id, int id_ME) {
        this.id = id;
        this.date = date;
        this.hour = hour;
        this.cost = cost;
        this.demand = demand;
        this.user_id = user_id;
        this.id_ME = id_ME;
    }

    public Appointment(String date, String hour, double cost, boolean demand, int id_ME) {
        this.date = date;
        this.hour = hour;
        this.cost = cost;
        this.demand = demand;
        this.id_ME = id_ME;
    }

    public Appointment(String date, String hour, double cost, boolean demand, int user_id, int id_ME) {
        this.date = date;
        this.hour = hour;
        this.cost = cost;
        this.demand = demand;
        this.user_id= user_id;
        this.id_ME = id_ME;
    }

    public Appointment() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public boolean getDemand(){
        return demand;
    }

    public void setDemand(boolean demand){
        this.demand = demand;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setId_ME(int id_ME) {
        this.id_ME = id_ME;
    }

    public int getId_ME() {
        return id_ME;
    }

    public boolean isDemand() {
        return demand;
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "id_prenotazione=" + id +
                ", date='" + date + '\'' +
                ", hour='" + hour + '\'' +
                ", cost=" + cost +
                ", demand='" + demand +
                ", user_id=" + user_id +
                ", id_ME=" + id_ME +
                '}';
    }
}