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
public class RightToRecives {
    private List<RightToRecive> rightToRecives = new ArrayList<RightToRecive>();  

    public List<RightToRecive> getRightToRecives() {
        return rightToRecives;
    }

    public void setRightToRecives(List<RightToRecive> rightToRecives) {
        this.rightToRecives = rightToRecives;
    }
        
    public void add(RightToRecive rightToRecive){
        this.rightToRecives.add(rightToRecive);
    }
    
    public void remove(int i){
        this.rightToRecives.remove(i);
    }
}
