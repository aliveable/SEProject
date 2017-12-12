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
}
