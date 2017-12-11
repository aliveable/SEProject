/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author khunach
 */
public class RightToRecive {
    private int space_list_id;
    private int space_id;
    private String space_text;

    public RightToRecive(int space_list_id, int space_id, String space_text) {
        this.space_list_id = space_list_id;
        this.space_id = space_id;
        this.space_text = space_text;
    }

    public int getSpace_list_id() {
        return space_list_id;
    }

    public void setSpace_list_id(int space_list_id) {
        this.space_list_id = space_list_id;
    }

    public int getSpace_id() {
        return space_id;
    }

    public void setSpace_id(int space_id) {
        this.space_id = space_id;
    }

    public String getSpace_text() {
        return space_text;
    }

    public void setSpace_text(String space_text) {
        this.space_text = space_text;
    }

    
}
