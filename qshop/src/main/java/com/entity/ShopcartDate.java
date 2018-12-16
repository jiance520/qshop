package com.entity;

import java.util.*;
public class ShopcartDate {
    private int total;
    private List<Shopcart> rows ;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void setRows(List<Shopcart> rows) {
        this.rows = rows;
    }

    public List<Shopcart> getRows() {
        return rows;
    }

    public ShopcartDate() {

    }
    public ShopcartDate (int total, List<Shopcart> rows) {

        this.total = total;
        this.rows = rows;
    }

}
