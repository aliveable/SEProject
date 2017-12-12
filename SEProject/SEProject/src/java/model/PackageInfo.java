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
 * @author Amoeba
 */
public class PackageInfo {
    private String name;
    private String desc;
    private String price;
    private String reserve_before;
    private String open;
    private String close;
    private String size;
    private int package_id;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getReserve_before() {
        return reserve_before;
    }

    public void setReserve_before(String reserve_before) {
        this.reserve_before = reserve_before;
    }

    public String getOpen() {
        return open;
    }

    public void setOpen(String open) {
        this.open = open;
    }

    public String getClose() {
        return close;
    }

    public void setClose(String close) {
        this.close = close;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }  

    public int getPackage_id() {
        return package_id;
    }

    public void setPackage_id(int package_id) {
        this.package_id = package_id;
    }    
    
}
