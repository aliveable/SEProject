/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class Include {
    private int package_list_id;
    private int package_id;
    private String package_text;
    private int package_list_price = 0;
    private int package_list_max = 0;

    public Include(int package_list_id, int package_id, String package_text, int package_list_price, int package_list_max) {
        this.package_list_id = package_list_id;
        this.package_id = package_id;
        this.package_text = package_text;
        this.package_list_price = package_list_price;
        this.package_list_max = package_list_max;
    }

    public Include(int package_list_id, int package_id, String package_text) {
        this.package_list_id = package_list_id;
        this.package_id = package_id;
        this.package_text = package_text;
    }

    public int getPackage_list_id() {
        return package_list_id;
    }

    public void setPackage_list_id(int package_list_id) {
        this.package_list_id = package_list_id;
    }

    public int getPackage_id() {
        return package_id;
    }

    public void setPackage_id(int package_id) {
        this.package_id = package_id;
    }

    public String getPackage_text() {
        return package_text;
    }

    public void setPackage_text(String package_text) {
        this.package_text = package_text;
    }

    public int getPackage_list_price() {
        return package_list_price;
    }

    public void setPackage_list_price(int package_list_price) {
        this.package_list_price = package_list_price;
    }

    public int getPackage_list_max() {
        return package_list_max;
    }

    public void setPackage_list_max(int package_list_max) {
        this.package_list_max = package_list_max;
    }
}
