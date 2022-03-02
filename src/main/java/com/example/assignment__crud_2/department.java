/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.assignment__crud_2;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Payal
 */
@Entity(name="department")
@Table(name="department" )
public class department {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column
    int d_id;
    @Column
    String name;
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "department{" + "d_id=" + d_id + ", name=" + name + '}';
    }
    
}
