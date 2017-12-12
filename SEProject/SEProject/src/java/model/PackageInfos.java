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
public class PackageInfos {
    private List<PackageInfo> pkInfo = new ArrayList<PackageInfo>();  

    public List<PackageInfo> getPkInfo() {
        return pkInfo;
    }

    public void setPkInfos(List<PackageInfo> pkInfos) {
        this.pkInfo = pkInfos;
    }

    public void add(PackageInfo pkInfo){
        this.pkInfo.add(pkInfo);
    }
    
    public void remove(int i){
        pkInfo.remove(i);
    }
    
}
