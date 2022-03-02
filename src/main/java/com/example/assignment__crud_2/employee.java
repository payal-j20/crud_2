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
@Entity(name="employee")
@Table(name="employee" )
public class employee {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column
    int e_id;
    @Column
    int d_id;
    @Column
    String f_name;
    @Column
    String l_name;
    @Column
    int salary;

    public int getD_id() {
        return d_id;
    }

    public void setId(int d_id) {
        this.d_id = d_id;
    }

    public String getF_name() {
        return f_name;
    }

    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    public String getL_name() {
        return l_name;
    }

    public void setL_name(String l_name) {
        this.l_name = l_name;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "employee{" + "e_id=" + e_id + ", d_id=" + d_id + ", f_name=" + f_name + ", l_name=" + l_name + ", salary=" + salary + '}';
    }
    
}
