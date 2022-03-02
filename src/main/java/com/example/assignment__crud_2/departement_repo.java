/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.assignment__crud_2;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author Payal
 */
public interface departement_repo extends CrudRepository<department,Integer> {
    @Query("from department where name=:name")
    List<employee> getdepartmentName(@Param("name") String name);
    
}
