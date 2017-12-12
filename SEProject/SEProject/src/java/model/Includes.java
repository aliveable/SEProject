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
public class Includes {
    private List<Include> includes = new ArrayList<Include>();  

    public List<Include> getIncludes() {
        return includes;
    }

    public void setIncludes(List<Include> inc) {
        this.includes = inc;
    }
        
    public void add(Include include){
        this.includes.add(include);
    }
    
    public void remove(int i){
        this.includes.remove(i);
    }
}
