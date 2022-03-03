/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.assignment__crud_2;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
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
    String d_name;
    @OneToMany(mappedBy = "d_id")
    List <employee> e;

    public List<employee> getE() {
        return e;
    }

    public void setE(List<employee> e) {
        this.e = e;
    }

    
    
    public String getD_name() {
        return d_name;
    }

    public void setD_name(String d_name) {
        this.d_name = d_name;
    }
    
    

    @Override
    public String toString() {
        return "department{" + "d_id=" + d_id + ", d_name=" + d_name + '}';
    }
    
}
