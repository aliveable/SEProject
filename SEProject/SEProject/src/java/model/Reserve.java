/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author khunach
 */
public class Reserve {
    private int reserve_id;
    private String username;
    private int space_id;
    private int package_id;
    private String reserve_time;
    private int reserve_price;
    private String reserve_status;
    private List<ReserveTime> reservetimes = new ArrayList<ReserveTime>();
    private List<ReserveAdd> reserveadds = new ArrayList<ReserveAdd>();

    public Reserve(int reserve_id, String username, int space_id, int package_id, String reserve_time, int reserve_price, String reserve_status) {
        this.reserve_id = reserve_id;
        this.username = username;
        this.space_id = space_id;
        this.package_id = package_id;
        this.reserve_time = reserve_time;
        this.reserve_price = reserve_price;
        this.reserve_status = reserve_status;
    }

    public int getReserve_id() {
        return reserve_id;
    }

    public void setReserve_id(int reserve_id) {
        this.reserve_id = reserve_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getSpace_id() {
        return space_id;
    }

    public void setSpace_id(int space_id) {
        this.space_id = space_id;
    }

    public int getPackage_id() {
        return package_id;
    }

    public void setPackage_id(int package_id) {
        this.package_id = package_id;
    }

    public String getReserve_time() {
        return reserve_time;
    }

    public void setReserve_time(String reserve_time) {
        this.reserve_time = reserve_time;
    }

    public int getReserve_price() {
        return reserve_price;
    }

    public void setReserve_price(int reserve_price) {
        this.reserve_price = reserve_price;
    }

    public String getReserve_status() {
        return reserve_status;
    }

    public void setReserve_status(String reserve_status) {
        this.reserve_status = reserve_status;
    }

    public List<ReserveTime> getReservetimes() {
        return reservetimes;
    }

    public void setReservetimes(List<ReserveTime> reservetimes) {
        this.reservetimes = reservetimes;
    }
    public void addReservetimes(ReserveTime pkInfo){
        this.reservetimes.add(pkInfo);
    }

    public List<ReserveAdd> getReserveadds() {
        return reserveadds;
    }

    public void setReserveadds(List<ReserveAdd> reserveadds) {
        this.reserveadds = reserveadds;
    }
    public void addReserveadds(ReserveAdd pkInfo){
        this.reserveadds.add(pkInfo);
    }
}
