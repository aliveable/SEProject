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
public class ShowServices {
    private List<ShowService> services = new ArrayList<ShowService>();  

    public List<ShowService> getServices() {
        return services;
    }

    public void setServices(List<ShowService> services) {
        this.services = services;
    }
        
    public void add(ShowService service){
        this.services.add(service);
    }
    
    public void remove(int i){
        this.services.remove(i);
    }
}
