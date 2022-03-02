/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.assignment__crud_2;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author Payal
 */
public interface employee_repo extends CrudRepository<employee,Integer> {
    
    @Query("from employee where e_id=:id")
    List<employee> getemployeeid(@Param("id") int id);
    
    @Query("from employee where f_name=:name")
    List<employee> gettemployeeName(@Param("name") String name);
    
    @Query("from employee where f_name=:name AND e_id=:id")
    List<employee> gettemployeeid_Name(@Param("name") String name,@Param("id") int id);
}
