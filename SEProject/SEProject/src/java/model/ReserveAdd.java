/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

class ReserveAdd {
    private int reserve_add_id;
    private int package_list_id;
    private int reserve_id;

    public int getReserve_add_id() {
        return reserve_add_id;
    }

    public void setReserve_add_id(int reserve_add_id) {
        this.reserve_add_id = reserve_add_id;
    }

    public int getPackage_list_id() {
        return package_list_id;
    }

    public void setPackage_list_id(int package_list_id) {
        this.package_list_id = package_list_id;
    }

    public int getReserve_id() {
        return reserve_id;
    }

    public void setReserve_id(int reserve_id) {
        this.reserve_id = reserve_id;
    }

    public ReserveAdd(int reserve_add_id, int package_list_id, int reserve_id) {
        this.reserve_add_id = reserve_add_id;
        this.package_list_id = package_list_id;
        this.reserve_id = reserve_id;
    }
}
