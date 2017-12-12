/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class ReserveTime {
    private int reserve_time_id;
    private int reserve_id;
    private String reserve_time_firsthour;
    private String reserve_time_lasthour;
    private int reserve_size;
    private int package_id;

    public ReserveTime(int reserve_time_id, int reserve_id, String reserve_time_firsthour, String reserve_time_lasthour, int reserve_size) {
        this.reserve_time_id = reserve_time_id;
        this.reserve_id = reserve_id;
        this.reserve_time_firsthour = reserve_time_firsthour;
        this.reserve_time_lasthour = reserve_time_lasthour;
        this.reserve_size = reserve_size;
    }

    public ReserveTime(int reserve_time_id, int reserve_id, String reserve_time_firsthour, String reserve_time_lasthour, int reserve_size, int package_id) {
        this.reserve_time_id = reserve_time_id;
        this.reserve_id = reserve_id;
        this.reserve_time_firsthour = reserve_time_firsthour;
        this.reserve_time_lasthour = reserve_time_lasthour;
        this.reserve_size = reserve_size;
        this.package_id = package_id;
    }

    public int getPackage_id() {
        return package_id;
    }

    public void setPackage_id(int package_id) {
        this.package_id = package_id;
    }

    public int getReserve_time_id() {
        return reserve_time_id;
    }

    public void setReserve_time_id(int reserve_time_id) {
        this.reserve_time_id = reserve_time_id;
    }

    public int getReserve_id() {
        return reserve_id;
    }

    public void setReserve_id(int reserve_id) {
        this.reserve_id = reserve_id;
    }

    public String getReserve_time_firsthour() {
        return reserve_time_firsthour;
    }

    public void setReserve_time_firsthour(String reserve_time_firsthour) {
        this.reserve_time_firsthour = reserve_time_firsthour;
    }

    public String getReserve_time_lasthour() {
        return reserve_time_lasthour;
    }

    public void setReserve_time_lasthour(String reserve_time_lasthour) {
        this.reserve_time_lasthour = reserve_time_lasthour;
    }

    public int getReserve_size() {
        return reserve_size;
    }

    public void setReserve_size(int reserve_size) {
        this.reserve_size = reserve_size;
    }
    
}
