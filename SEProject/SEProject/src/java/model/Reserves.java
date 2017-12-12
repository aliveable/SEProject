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
public class Reserves {
    private List<Reserve> reserves = new ArrayList<Reserve>();  

    public List<Reserve> getReserves() {
        return reserves;
    }

    public void setReserves(List<Reserve> pkInfos) {
        this.reserves = pkInfos;
    }

    public void add(Reserve pkInfo){
        this.reserves.add(pkInfo);
    }
    
    public void remove(int i){
        reserves.remove(i);
    }
}
