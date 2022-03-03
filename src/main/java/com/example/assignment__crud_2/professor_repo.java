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
public interface professor_repo extends CrudRepository<proffessor,Integer>{
    @Query("select subject from proffessor ")
    List<String> getALlsubject();
    @Query("select name from proffessor ")
    List<String> getALlproffesor();
    @Query("from proffessor where salary >:salary")
    List<String> getALlsalary(@Param("salary") int salary);
    
}
